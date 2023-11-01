##Read the data in:
CH_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_CH_ESS3-6.csv")

##Select the five variables needed for MGCFA:
CH_Round3To6_cfa<-CH_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(CH_Round3To6_cfa,n=5)
tail(CH_Round3To6_cfa,n=5)

##Treating missing values
##Identify 88 as missing values for all 3 variables:
table(CH_Round3To6_cfa$imbgeco)
table(CH_Round3To6_cfa$imueclt)
table(CH_Round3To6_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

CH_Round3To6_cfa[,3:5]<-defineNA_88(CH_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(CH_Round3To6_cfa$imbgeco))
sum(is.na(CH_Round3To6_cfa$imueclt))
sum(is.na(CH_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

CH_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = CH_Round3To6_cfa,VarName = "imbgeco")
CH_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = CH_Round3To6_cfa,VarName = "imueclt")
CH_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = CH_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
CH_Round3To6_cfa$CountryRound<-paste(CH_Round3To6_cfa$cntry,CH_Round3To6_cfa$essround,
                                     sep = "-")
CH_Round3To6_cfa$CountryRound<-factor(CH_Round3To6_cfa$CountryRound,
                                      levels = c("CH-3","CH-4","CH-5","CH-6"),
                                      labels = c("CH-3","CH-4","CH-5","CH-6"))

##Narrow the dataset down to the variables we need:
CH_Round3To6_cfa<-CH_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_CHthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_CHthreat_EcoCris<-cfa(model = model_CHthreat_EcoCris,
                                 data = CH_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_CHthreat_EcoCris<-cfa(model = model_CHthreat_EcoCris,
                                 data = CH_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_CHthreat_EcoCris<-cfa(model = model_CHthreat_EcoCris,
                                 data = CH_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_CHthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_CHthreat_EcoCris,fit_Metric_CHthreat_EcoCris,fit_Scalar_CHthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_CHthreat_EcoCris,fit_Metric_CHthreat_EcoCris,fit_Scalar_CHthreat_EcoCris)

lavTestScore(fit_Metric_CHthreat_EcoCris)
parTable(fit_Metric_CHthreat_EcoCris)

lavTestScore(fit_Scalar_CHthreat_EcoCris)
parTable(fit_Scalar_CHthreat_EcoCris)


