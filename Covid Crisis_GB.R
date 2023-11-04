##Read the data in:
GB_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_GB_ESS9-10.csv")

##Select the five variables needed for MGCFA:
GB_Round9To10_cfa<-GB_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(GB_Round9To10_cfa,n=5)
tail(GB_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77, 88 as missing values for all 3 variables:
table(GB_Round9To10_cfa$imbgeco)
table(GB_Round9To10_cfa$imueclt)
table(GB_Round9To10_cfa$imwbcnt)

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


GB_Round9To10_cfa[,3:5]<-defineNA_88(GB_Round9To10_cfa[,3:5])
GB_Round9To10_cfa[,3:5]<-defineNA_77(GB_Round9To10_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(GB_Round9To10_cfa$imbgeco))
sum(is.na(GB_Round9To10_cfa$imueclt))
sum(is.na(GB_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

GB_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = GB_Round9To10_cfa,VarName = "imbgeco")
GB_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = GB_Round9To10_cfa,VarName = "imueclt")
GB_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = GB_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
GB_Round9To10_cfa$CountryRound<-paste(GB_Round9To10_cfa$cntry,GB_Round9To10_cfa$essround,
                                      sep = "-")
GB_Round9To10_cfa$CountryRound<-factor(GB_Round9To10_cfa$CountryRound,
                                       levels = c("GB-9","GB-10"),
                                       labels = c("GB-9","GB-10"))

##Narrow the dataset down to the variables we need:
GB_Round9To10_cfa<-GB_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_GBthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_GBthreat_CovidCris<-cfa(model = model_GBthreat_CovidCris,
                                   data = GB_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_GBthreat_CovidCris<-cfa(model = model_GBthreat_CovidCris,
                                   data = GB_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_GBthreat_CovidCris<-cfa(model = model_GBthreat_CovidCris,
                                   data = GB_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_GBthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_GBthreat_CovidCris,fit_Metric_GBthreat_CovidCris,fit_Scalar_GBthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_GBthreat_CovidCris,fit_Metric_GBthreat_CovidCris,fit_Scalar_GBthreat_CovidCris)

