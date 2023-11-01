##Read the data in:
UA_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_UA_ESS3-6.csv")

##Select the five variables needed for MGCFA:
UA_Round3To6_cfa<-UA_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(UA_Round3To6_cfa,n=5)
tail(UA_Round3To6_cfa,n=5)

##Treating missing values
##Identify 88 and 99 as missing values for all 3 variables:
table(UA_Round3To6_cfa$imbgeco)
table(UA_Round3To6_cfa$imueclt)
table(UA_Round3To6_cfa$imwbcnt)

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

UA_Round3To6_cfa[,3:5]<-defineNA_88(UA_Round3To6_cfa[,3:5])
UA_Round3To6_cfa[,3:5]<-defineNA_99(UA_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(UA_Round3To6_cfa$imbgeco))
sum(is.na(UA_Round3To6_cfa$imueclt))
sum(is.na(UA_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

UA_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = UA_Round3To6_cfa,VarName = "imbgeco")
UA_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = UA_Round3To6_cfa,VarName = "imueclt")
UA_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = UA_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
UA_Round3To6_cfa$CountryRound<-paste(UA_Round3To6_cfa$cntry,UA_Round3To6_cfa$essround,
                                     sep = "-")
UA_Round3To6_cfa$CountryRound<-factor(UA_Round3To6_cfa$CountryRound,
                                      levels = c("UA-3","UA-4","UA-5","UA-6"),
                                      labels = c("UA-3","UA-4","UA-5","UA-6"))

##Narrow the dataset down to the variables we need:
UA_Round3To6_cfa<-UA_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_UAthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_UAthreat_EcoCris<-cfa(model = model_UAthreat_EcoCris,
                                 data = UA_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_UAthreat_EcoCris<-cfa(model = model_UAthreat_EcoCris,
                                 data = UA_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_UAthreat_EcoCris<-cfa(model = model_UAthreat_EcoCris,
                                 data = UA_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_UAthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_UAthreat_EcoCris,fit_Metric_UAthreat_EcoCris,fit_Scalar_UAthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_UAthreat_EcoCris,fit_Metric_UAthreat_EcoCris,fit_Scalar_UAthreat_EcoCris)

##parameters causing the problems
lavTestScore(fit_Metric_UAthreat_EcoCris)
parTable(fit_Metric_UAthreat_EcoCris)

lavTestScore(fit_Scalar_UAthreat_EcoCris)
parTable(fit_Scalar_UAthreat_EcoCris)


