##Read the data in:
FI_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_FI_ESS3-6.csv")

##Select the five variables needed for MGCFA:
FI_Round3To6_cfa<-FI_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(FI_Round3To6_cfa,n=5)
tail(FI_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 77 and 88 as missing values for all 3 variables:
table(FI_Round3To6_cfa$imbgeco)
table(FI_Round3To6_cfa$imueclt)
table(FI_Round3To6_cfa$imwbcnt)

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

FI_Round3To6_cfa[,3:5]<-defineNA_88(FI_Round3To6_cfa[,3:5])
FI_Round3To6_cfa[,3:5]<-defineNA_77(FI_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(FI_Round3To6_cfa$imbgeco))
sum(is.na(FI_Round3To6_cfa$imueclt))
sum(is.na(FI_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

FI_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = FI_Round3To6_cfa,VarName = "imbgeco")
FI_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = FI_Round3To6_cfa,VarName = "imueclt")
FI_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = FI_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
FI_Round3To6_cfa$CountryRound<-paste(FI_Round3To6_cfa$cntry,FI_Round3To6_cfa$essround,
                                     sep = "-")
FI_Round3To6_cfa$CountryRound<-factor(FI_Round3To6_cfa$CountryRound,
                                      levels = c("FI-3","FI-4","FI-5","FI-6"),
                                      labels = c("FI-3","FI-4","FI-5","FI-6"))

##Narrow the dataset down to the variables we need:
FI_Round3To6_cfa<-FI_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_FIthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_FIthreat_EcoCris<-cfa(model = model_FIthreat_EcoCris,
                                 data = FI_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_FIthreat_EcoCris<-cfa(model = model_FIthreat_EcoCris,
                                 data = FI_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_FIthreat_EcoCris<-cfa(model = model_FIthreat_EcoCris,
                                 data = FI_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_FIthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_FIthreat_EcoCris,fit_Metric_FIthreat_EcoCris,fit_Scalar_FIthreat_EcoCris)

##local fit:
lavTestLRT(fit_Config_FIthreat_EcoCris,fit_Metric_FIthreat_EcoCris,fit_Scalar_FIthreat_EcoCris)

##No scalar invariance:
lavTestScore(fit_Scalar_FIthreat_EcoCris)
parTable(fit_Scalar_FIthreat_EcoCris)
