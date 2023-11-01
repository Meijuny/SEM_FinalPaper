##Read the data in:
EE_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_EE_ESS3-6.csv")

##Select the five variables needed for MGCFA:
EE_Round3To6_cfa<-EE_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(EE_Round3To6_cfa,n=5)
tail(EE_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 88 as missing values for all 3 variables and 99 for imbgeco:
table(EE_Round3To6_cfa$imbgeco)
table(EE_Round3To6_cfa$imueclt)
table(EE_Round3To6_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

EE_Round3To6_cfa[,3:5]<-defineNA_88(EE_Round3To6_cfa[,3:5])
EE_Round3To6_cfa$imbgeco<-as.numeric(sub(99,NA,EE_Round3To6_cfa$imbgeco))

##Double check the NA is correctly treated:
sum(is.na(EE_Round3To6_cfa$imbgeco))
sum(is.na(EE_Round3To6_cfa$imueclt))
sum(is.na(EE_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

EE_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = EE_Round3To6_cfa,VarName = "imbgeco")
EE_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = EE_Round3To6_cfa,VarName = "imueclt")
EE_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = EE_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
EE_Round3To6_cfa$CountryRound<-paste(EE_Round3To6_cfa$cntry,EE_Round3To6_cfa$essround,
                                     sep = "-")
EE_Round3To6_cfa$CountryRound<-factor(EE_Round3To6_cfa$CountryRound,
                                      levels = c("EE-3","EE-4","EE-5","EE-6"),
                                      labels = c("EE-3","EE-4","EE-5","EE-6"))

##Narrow the dataset down to the variables we need:
EE_Round3To6_cfa<-EE_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_EEthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_EEthreat_EcoCris<-cfa(model = model_EEthreat_EcoCris,
                                 data = EE_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_EEthreat_EcoCris<-cfa(model = model_EEthreat_EcoCris,
                                 data = EE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_EEthreat_EcoCris<-cfa(model = model_EEthreat_EcoCris,
                                 data = EE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_EEthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_EEthreat_EcoCris,fit_Metric_EEthreat_EcoCris,fit_Scalar_EEthreat_EcoCris)


##local fit:
lavTestLRT(fit_Config_EEthreat_EcoCris,fit_Metric_EEthreat_EcoCris,fit_Scalar_EEthreat_EcoCris)

##No full metric invariance
lavTestScore(fit_Metric_EEthreat_EcoCris)
parTable(fit_Metric_EEthreat_EcoCris)

lavTestScore(fit_Scalar_EEthreat_EcoCris)
parTable(fit_Scalar_EEthreat_EcoCris)
