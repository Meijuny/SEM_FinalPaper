##Read the data in:
SE_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_SE_ESS3-6.csv")

##Select the five variables needed for MGCFA:
SE_Round3To6_cfa<-SE_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(SE_Round3To6_cfa,n=5)
tail(SE_Round3To6_cfa,n=5)

##Treating missing values
##Identify 77, 88 and 99 as missing values for all 3 variables:
table(SE_Round3To6_cfa$imbgeco)
table(SE_Round3To6_cfa$imueclt)
table(SE_Round3To6_cfa$imwbcnt)

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

SE_Round3To6_cfa[,3:5]<-defineNA_88(SE_Round3To6_cfa[,3:5])
SE_Round3To6_cfa[,3:5]<-defineNA_77(SE_Round3To6_cfa[,3:5])
SE_Round3To6_cfa[,3:5]<-defineNA_99(SE_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(SE_Round3To6_cfa$imbgeco))
sum(is.na(SE_Round3To6_cfa$imueclt))
sum(is.na(SE_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

SE_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = SE_Round3To6_cfa,VarName = "imbgeco")
SE_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = SE_Round3To6_cfa,VarName = "imueclt")
SE_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = SE_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
SE_Round3To6_cfa$CountryRound<-paste(SE_Round3To6_cfa$cntry,SE_Round3To6_cfa$essround,
                                     sep = "-")
SE_Round3To6_cfa$CountryRound<-factor(SE_Round3To6_cfa$CountryRound,
                                      levels = c("SE-3","SE-4","SE-5","SE-6"),
                                      labels = c("SE-3","SE-4","SE-5","SE-6"))

##Narrow the dataset down to the variables we need:
SE_Round3To6_cfa<-SE_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_SEthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_SEthreat_EcoCris<-cfa(model = model_SEthreat_EcoCris,
                                 data = SE_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_SEthreat_EcoCris<-cfa(model = model_SEthreat_EcoCris,
                                 data = SE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_SEthreat_EcoCris<-cfa(model = model_SEthreat_EcoCris,
                                 data = SE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_SEthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_SEthreat_EcoCris,fit_Metric_SEthreat_EcoCris,fit_Scalar_SEthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_SEthreat_EcoCris,fit_Metric_SEthreat_EcoCris,fit_Scalar_SEthreat_EcoCris)

lavTestScore(fit_Metric_SEthreat_EcoCris)
parTable(fit_Metric_SEthreat_EcoCris)
lavTestScore(fit_Scalar_SEthreat_EcoCris)
parTable(fit_Scalar_SEthreat_EcoCris)

