##Read the data in:
NL_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_NL_ESS3-6.csv")

##Select the five variables needed for MGCFA:
NL_Round3To6_cfa<-NL_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(NL_Round3To6_cfa,n=5)
tail(NL_Round3To6_cfa,n=5)

##Treating missing values
##Identify 77 and 88 as missing values for all 3 variables:
table(NL_Round3To6_cfa$imbgeco)
table(NL_Round3To6_cfa$imueclt)
table(NL_Round3To6_cfa$imwbcnt)

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

NL_Round3To6_cfa[,3:5]<-defineNA_88(NL_Round3To6_cfa[,3:5])
NL_Round3To6_cfa[,3:5]<-defineNA_77(NL_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(NL_Round3To6_cfa$imbgeco))
sum(is.na(NL_Round3To6_cfa$imueclt))
sum(is.na(NL_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

NL_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = NL_Round3To6_cfa,VarName = "imbgeco")
NL_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = NL_Round3To6_cfa,VarName = "imueclt")
NL_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = NL_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
NL_Round3To6_cfa$CountryRound<-paste(NL_Round3To6_cfa$cntry,NL_Round3To6_cfa$essround,
                                     sep = "-")
NL_Round3To6_cfa$CountryRound<-factor(NL_Round3To6_cfa$CountryRound,
                                      levels = c("NL-3","NL-4","NL-5","NL-6"),
                                      labels = c("NL-3","NL-4","NL-5","NL-6"))

##Narrow the dataset down to the variables we need:
NL_Round3To6_cfa<-NL_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_NLthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_NLthreat_EcoCris<-cfa(model = model_NLthreat_EcoCris,
                                 data = NL_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_NLthreat_EcoCris<-cfa(model = model_NLthreat_EcoCris,
                                 data = NL_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_NLthreat_EcoCris<-cfa(model = model_NLthreat_EcoCris,
                                 data = NL_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))

summary(fit_Scalar_NLthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_NLthreat_EcoCris,fit_Metric_NLthreat_EcoCris,fit_Scalar_NLthreat_EcoCris)

##local fit:
lavTestLRT(fit_Config_NLthreat_EcoCris,fit_Metric_NLthreat_EcoCris,fit_Scalar_NLthreat_EcoCris)

lavTestScore(fit_Scalar_NLthreat_EcoCris)
parTable(fit_Scalar_NLthreat_EcoCris)

