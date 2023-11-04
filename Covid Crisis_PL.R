##Read the data in:
PL_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_PL_ESS9-10.csv")

##Select the five variables needed for MGCFA:
PL_Round9To10_cfa<-PL_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(PL_Round9To10_cfa,n=5)
tail(PL_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77, 88,99 as missing values for all 3 variables:
table(PL_Round9To10_cfa$imbgeco)
table(PL_Round9To10_cfa$imueclt)
table(PL_Round9To10_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

defineNA_99<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(99,NA,data[,i]))    
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


PL_Round9To10_cfa[,3:5]<-defineNA_99(PL_Round9To10_cfa[,3:5])
PL_Round9To10_cfa[,3:5]<-defineNA_88(PL_Round9To10_cfa[,3:5])
PL_Round9To10_cfa[,3:5]<-defineNA_77(PL_Round9To10_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(PL_Round9To10_cfa$imbgeco))
sum(is.na(PL_Round9To10_cfa$imueclt))
sum(is.na(PL_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

PL_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = PL_Round9To10_cfa,VarName = "imbgeco")
PL_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = PL_Round9To10_cfa,VarName = "imueclt")
PL_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = PL_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
PL_Round9To10_cfa$CountryRound<-paste(PL_Round9To10_cfa$cntry,PL_Round9To10_cfa$essround,
                                      sep = "-")
PL_Round9To10_cfa$CountryRound<-factor(PL_Round9To10_cfa$CountryRound,
                                       levels = c("PL-9","PL-10"),
                                       labels = c("PL-9","PL-10"))

##Narrow the dataset down to the variables we need:
PL_Round9To10_cfa<-PL_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_PLthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_PLthreat_CovidCris<-cfa(model = model_PLthreat_CovidCris,
                                   data = PL_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_PLthreat_CovidCris<-cfa(model = model_PLthreat_CovidCris,
                                   data = PL_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_PLthreat_CovidCris<-cfa(model = model_PLthreat_CovidCris,
                                   data = PL_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_PLthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_PLthreat_CovidCris,fit_Metric_PLthreat_CovidCris,fit_Scalar_PLthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_PLthreat_CovidCris,fit_Metric_PLthreat_CovidCris,fit_Scalar_PLthreat_CovidCris)

lavTestScore(fit_Metric_PLthreat_CovidCris)
parTable(fit_Metric_PLthreat_CovidCris)
