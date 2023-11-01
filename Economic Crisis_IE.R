##Read the data in:
IE_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_IE_ESS3-6.csv")

##Select the five variables needed for MGCFA:
IE_Round3To6_cfa<-IE_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(IE_Round3To6_cfa,n=5)
tail(IE_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 77, 88 and 99 as missing values for all 3 variables:
table(IE_Round3To6_cfa$imbgeco)
table(IE_Round3To6_cfa$imueclt)
table(IE_Round3To6_cfa$imwbcnt)

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

IE_Round3To6_cfa[,3:5]<-defineNA_88(IE_Round3To6_cfa[,3:5])
IE_Round3To6_cfa[,3:5]<-defineNA_77(IE_Round3To6_cfa[,3:5])
IE_Round3To6_cfa[,3:5]<-defineNA_99(IE_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(IE_Round3To6_cfa$imbgeco))
sum(is.na(IE_Round3To6_cfa$imueclt))
sum(is.na(IE_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

IE_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = IE_Round3To6_cfa,VarName = "imbgeco")
IE_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = IE_Round3To6_cfa,VarName = "imueclt")
IE_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = IE_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
IE_Round3To6_cfa$CountryRound<-paste(IE_Round3To6_cfa$cntry,IE_Round3To6_cfa$essround,
                                     sep = "-")
IE_Round3To6_cfa$CountryRound<-factor(IE_Round3To6_cfa$CountryRound,
                                      levels = c("IE-3","IE-4","IE-5","IE-6"),
                                      labels = c("IE-3","IE-4","IE-5","IE-6"))

##Narrow the dataset down to the variables we need:
IE_Round3To6_cfa<-IE_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_IEthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_IEthreat_EcoCris<-cfa(model = model_IEthreat_EcoCris,
                                 data = IE_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_IEthreat_EcoCris<-cfa(model = model_IEthreat_EcoCris,
                                 data = IE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_IEthreat_EcoCris<-cfa(model = model_IEthreat_EcoCris,
                                 data = IE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))

summary(fit_Scalar_IEthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_IEthreat_EcoCris,fit_Metric_IEthreat_EcoCris,fit_Scalar_IEthreat_EcoCris)

##local fit:
lavTestLRT(fit_Config_IEthreat_EcoCris,fit_Metric_IEthreat_EcoCris,fit_Scalar_IEthreat_EcoCris)

lavTestScore(fit_Metric_IEthreat_EcoCris)
parTable(fit_Metric_IEthreat_EcoCris)

lavTestScore(fit_Scalar_IEthreat_EcoCris)
parTable(fit_Scalar_IEthreat_EcoCris)

##Manually define model:
model_IEthreat_free1intercept<-'
PerceivedEthnicThreat=~c(L1,L1,L1,L1)*EcoThreat+c(L2,L2,L2,L2)*CulThreat+c(L3,L3,L3,L3)*GenThreat
EcoThreat~c(I1,I1,I1_Round5,I1)*1
CulThreat~c(I2,I2,I2,I2)*1
GenThreat~c(I3,I3,I3,I3)*1
PerceivedEthnicThreat~c(0,NA,NA,NA)*0
'

#partial scalar invariance:
fit_IEthreat_free1intercept<-cfa(model = model_IEthreat_free1intercept,
                                 data = IE_Round3To6_cfa,
                                 group = "CountryRound")
summary(fit_IEthreat_free1intercept, fit.measures=TRUE,standardized=TRUE)
lavTestScore(fit_IEthreat_free1intercept)
parTable(fit_IEthreat_free1intercept)



