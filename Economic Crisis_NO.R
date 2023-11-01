##Read the data in:
NO_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_NO_ESS3-6.csv")

##Select the five variables needed for MGCFA:
NO_Round3To6_cfa<-NO_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(NO_Round3To6_cfa,n=5)
tail(NO_Round3To6_cfa,n=5)

##Treating missing values
##Identify 77 and 88 as missing values for all 3 variables:
table(NO_Round3To6_cfa$imbgeco)
table(NO_Round3To6_cfa$imueclt)
table(NO_Round3To6_cfa$imwbcnt)

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

NO_Round3To6_cfa[,3:5]<-defineNA_88(NO_Round3To6_cfa[,3:5])
NO_Round3To6_cfa[,3:5]<-defineNA_77(NO_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(NO_Round3To6_cfa$imbgeco))
sum(is.na(NO_Round3To6_cfa$imueclt))
sum(is.na(NO_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

NO_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = NO_Round3To6_cfa,VarName = "imbgeco")
NO_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = NO_Round3To6_cfa,VarName = "imueclt")
NO_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = NO_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
NO_Round3To6_cfa$CountryRound<-paste(NO_Round3To6_cfa$cntry,NO_Round3To6_cfa$essround,
                                     sep = "-")
NO_Round3To6_cfa$CountryRound<-factor(NO_Round3To6_cfa$CountryRound,
                                      levels = c("NO-3","NO-4","NO-5","NO-6"),
                                      labels = c("NO-3","NO-4","NO-5","NO-6"))

##Narrow the dataset down to the variables we need:
NO_Round3To6_cfa<-NO_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_NOthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_NOthreat_EcoCris<-cfa(model = model_NOthreat_EcoCris,
                                 data = NO_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_NOthreat_EcoCris<-cfa(model = model_NOthreat_EcoCris,
                                 data = NO_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_NOthreat_EcoCris<-cfa(model = model_NOthreat_EcoCris,
                                 data = NO_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))

summary(fit_Scalar_NOthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_NOthreat_EcoCris,fit_Metric_NOthreat_EcoCris,fit_Scalar_NOthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_NOthreat_EcoCris,fit_Metric_NOthreat_EcoCris,fit_Scalar_NOthreat_EcoCris)

lavTestScore(fit_Metric_NOthreat_EcoCris)
parTable(fit_Metric_NOthreat_EcoCris)

lavTestScore(fit_Scalar_NOthreat_EcoCris)
parTable(fit_Scalar_NOthreat_EcoCris)

