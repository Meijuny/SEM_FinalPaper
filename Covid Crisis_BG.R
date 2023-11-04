##Read the data in:
BG_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_BG_ESS9-10.csv")

##Select the five variables needed for MGCFA:
BG_Round9To10_cfa<-BG_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(BG_Round9To10_cfa,n=5)
tail(BG_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77 and 88 as missing values for all 3 variables:
table(BG_Round9To10_cfa$imbgeco)
table(BG_Round9To10_cfa$imueclt)
table(BG_Round9To10_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

defineNA_77<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(77,NA,data[,i]))    
        }
        return(output)
}


BG_Round9To10_cfa[,3:5]<-defineNA_77(BG_Round9To10_cfa[,3:5])
BG_Round9To10_cfa[,3:5]<-defineNA_88(BG_Round9To10_cfa[,3:5])


##Double check the NA is correctly treated:
sum(is.na(BG_Round9To10_cfa$imbgeco))
sum(is.na(BG_Round9To10_cfa$imueclt))
sum(is.na(BG_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

BG_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = BG_Round9To10_cfa,VarName = "imbgeco")
BG_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = BG_Round9To10_cfa,VarName = "imueclt")
BG_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = BG_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
BG_Round9To10_cfa$CountryRound<-paste(BG_Round9To10_cfa$cntry,BG_Round9To10_cfa$essround,
                                      sep = "-")
BG_Round9To10_cfa$CountryRound<-factor(BG_Round9To10_cfa$CountryRound,
                                       levels = c("BG-9","BG-10"),
                                       labels = c("BG-9","BG-10"))

##Narrow the dataset down to the variables we need:
BG_Round9To10_cfa<-BG_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_BGthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_BGthreat_CovidCris<-cfa(model = model_BGthreat_CovidCris,
                                   data = BG_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_BGthreat_CovidCris<-cfa(model = model_BGthreat_CovidCris,
                                   data = BG_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_BGthreat_CovidCris<-cfa(model = model_BGthreat_CovidCris,
                                   data = BG_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_BGthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_BGthreat_CovidCris,fit_Metric_BGthreat_CovidCris,fit_Scalar_BGthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_BGthreat_CovidCris,fit_Metric_BGthreat_CovidCris,fit_Scalar_BGthreat_CovidCris)