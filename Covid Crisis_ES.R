##Read the data in:
ES_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_ES_ESS9-10.csv")

##Select the five variables needed for MGCFA:
ES_Round9To10_cfa<-ES_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(ES_Round9To10_cfa,n=5)
tail(ES_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77, 88, 99 as missing values for all 3 variables:
table(ES_Round9To10_cfa$imbgeco)
table(ES_Round9To10_cfa$imueclt)
table(ES_Round9To10_cfa$imwbcnt)

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

defineNA_99<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(99,NA,data[,i]))    
        }
        return(output)
}


ES_Round9To10_cfa[,3:5]<-defineNA_88(ES_Round9To10_cfa[,3:5])
ES_Round9To10_cfa[,3:5]<-defineNA_77(ES_Round9To10_cfa[,3:5])
ES_Round9To10_cfa[,3:5]<-defineNA_99(ES_Round9To10_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(ES_Round9To10_cfa$imbgeco))
sum(is.na(ES_Round9To10_cfa$imueclt))
sum(is.na(ES_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

ES_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = ES_Round9To10_cfa,VarName = "imbgeco")
ES_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = ES_Round9To10_cfa,VarName = "imueclt")
ES_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = ES_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
ES_Round9To10_cfa$CountryRound<-paste(ES_Round9To10_cfa$cntry,ES_Round9To10_cfa$essround,
                                      sep = "-")
ES_Round9To10_cfa$CountryRound<-factor(ES_Round9To10_cfa$CountryRound,
                                       levels = c("ES-9","ES-10"),
                                       labels = c("ES-9","ES-10"))

##Narrow the dataset down to the variables we need:
ES_Round9To10_cfa<-ES_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_ESthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_ESthreat_CovidCris<-cfa(model = model_ESthreat_CovidCris,
                                   data = ES_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_ESthreat_CovidCris<-cfa(model = model_ESthreat_CovidCris,
                                   data = ES_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_ESthreat_CovidCris<-cfa(model = model_ESthreat_CovidCris,
                                   data = ES_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_ESthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_ESthreat_CovidCris,fit_Metric_ESthreat_CovidCris,fit_Scalar_ESthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_ESthreat_CovidCris,fit_Metric_ESthreat_CovidCris,fit_Scalar_ESthreat_CovidCris)

lavTestScore(fit_Metric_ESthreat_CovidCris)
parTable(fit_Metric_ESthreat_CovidCris)
