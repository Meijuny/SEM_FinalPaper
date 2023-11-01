##Read the data in:
HU_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_HU_ESS3-6.csv")

##Select the five variables needed for MGCFA:
HU_Round3To6_cfa<-HU_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(HU_Round3To6_cfa,n=5)
tail(HU_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 77 and 88 as missing values for all 3 variables:
table(HU_Round3To6_cfa$imbgeco)
table(HU_Round3To6_cfa$imueclt)
table(HU_Round3To6_cfa$imwbcnt)

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

HU_Round3To6_cfa[,3:5]<-defineNA_88(HU_Round3To6_cfa[,3:5])
HU_Round3To6_cfa[,3:5]<-defineNA_77(HU_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(HU_Round3To6_cfa$imbgeco))
sum(is.na(HU_Round3To6_cfa$imueclt))
sum(is.na(HU_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

HU_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = HU_Round3To6_cfa,VarName = "imbgeco")
HU_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = HU_Round3To6_cfa,VarName = "imueclt")
HU_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = HU_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
HU_Round3To6_cfa$CountryRound<-paste(HU_Round3To6_cfa$cntry,HU_Round3To6_cfa$essround,
                                     sep = "-")
HU_Round3To6_cfa$CountryRound<-factor(HU_Round3To6_cfa$CountryRound,
                                      levels = c("HU-3","HU-4","HU-5","HU-6"),
                                      labels = c("HU-3","HU-4","HU-5","HU-6"))

##Narrow the dataset down to the variables we need:
HU_Round3To6_cfa<-HU_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_HUthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_HUthreat_EcoCris<-cfa(model = model_HUthreat_EcoCris,
                                 data = HU_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_HUthreat_EcoCris<-cfa(model = model_HUthreat_EcoCris,
                                 data = HU_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_HUthreat_EcoCris<-cfa(model = model_HUthreat_EcoCris,
                                 data = HU_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_HUthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_HUthreat_EcoCris,fit_Metric_HUthreat_EcoCris,fit_Scalar_HUthreat_EcoCris)

##local fit:
lavTestLRT(fit_Config_HUthreat_EcoCris,fit_Metric_HUthreat_EcoCris,fit_Scalar_HUthreat_EcoCris)

##No full metric invariance, but possible scalar invariance?
lavTestScore(fit_Metric_HUthreat_EcoCris)
parTable(fit_Metric_HUthreat_EcoCris)

##Manually define model:
model_HUthreat_free1loading<-'
PerceivedEthnicThreat=~c(L1,L1,L1,L1)*EcoThreat+c(L2,L2,L2,L2_Round6)*CulThreat+c(L3,L3,L3,L3)*GenThreat
EcoThreat~c(I1,I1,I1,I1)*1
CulThreat~c(I2,I2,I2,I2)*1
GenThreat~c(I3,I3,I3,I3)*1
PerceivedEthnicThreat~c(0,NA,NA,NA)*0
'

#metric invariance
fit_HUthreat_free1loading<-cfa(model = model_HUthreat_free1loading,
                               data = HU_Round3To6_cfa,
                               group = "CountryRound")
summary(fit_HUthreat_free1loading,fit.measures=TRUE,standardized=TRUE)

lavTestLRT(fit_Config_HUthreat_EcoCris,fit_HUthreat_free1loading,fit_Scalar_HUthreat_EcoCris)




