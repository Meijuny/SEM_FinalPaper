##Read the data in:
SI_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_SI_ESS3-6.csv")

##Select the five variables needed for MGCFA:
SI_Round3To6_cfa<-SI_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(SI_Round3To6_cfa,n=5)
tail(SI_Round3To6_cfa,n=5)

##Treating missing values
##Identify 88 and 99 as missing values for all 3 variables:
table(SI_Round3To6_cfa$imbgeco)
table(SI_Round3To6_cfa$imueclt)
table(SI_Round3To6_cfa$imwbcnt)

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

SI_Round3To6_cfa[,3:5]<-defineNA_88(SI_Round3To6_cfa[,3:5])
SI_Round3To6_cfa[,3:5]<-defineNA_99(SI_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(SI_Round3To6_cfa$imbgeco))
sum(is.na(SI_Round3To6_cfa$imueclt))
sum(is.na(SI_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

SI_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = SI_Round3To6_cfa,VarName = "imbgeco")
SI_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = SI_Round3To6_cfa,VarName = "imueclt")
SI_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = SI_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
SI_Round3To6_cfa$CountryRound<-paste(SI_Round3To6_cfa$cntry,SI_Round3To6_cfa$essround,
                                     sep = "-")
SI_Round3To6_cfa$CountryRound<-factor(SI_Round3To6_cfa$CountryRound,
                                      levels = c("SI-3","SI-4","SI-5","SI-6"),
                                      labels = c("SI-3","SI-4","SI-5","SI-6"))

##Narrow the dataset down to the variables we need:
SI_Round3To6_cfa<-SI_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_SIthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_SIthreat_EcoCris<-cfa(model = model_SIthreat_EcoCris,
                                 data = SI_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_SIthreat_EcoCris<-cfa(model = model_SIthreat_EcoCris,
                                 data = SI_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_SIthreat_EcoCris<-cfa(model = model_SIthreat_EcoCris,
                                 data = SI_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_SIthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_SIthreat_EcoCris,fit_Metric_SIthreat_EcoCris,fit_Scalar_SIthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_SIthreat_EcoCris,fit_Metric_SIthreat_EcoCris,fit_Scalar_SIthreat_EcoCris)

lavTestScore(fit_Scalar_SIthreat_EcoCris)
parTable(fit_Scalar_SIthreat_EcoCris)
