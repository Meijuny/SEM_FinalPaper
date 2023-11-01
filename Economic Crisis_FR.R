##Read the data in:
FR_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_FR_ESS3-6.csv")

##Select the five variables needed for MGCFA:
FR_Round3To6_cfa<-FR_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(FR_Round3To6_cfa,n=5)
tail(FR_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 77 and 88 as missing values for all 3 variables:
table(FR_Round3To6_cfa$imbgeco)
table(FR_Round3To6_cfa$imueclt)
table(FR_Round3To6_cfa$imwbcnt)

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

FR_Round3To6_cfa[,3:5]<-defineNA_88(FR_Round3To6_cfa[,3:5])
FR_Round3To6_cfa[,3:5]<-defineNA_77(FR_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(FR_Round3To6_cfa$imbgeco))
sum(is.na(FR_Round3To6_cfa$imueclt))
sum(is.na(FR_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

FR_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = FR_Round3To6_cfa,VarName = "imbgeco")
FR_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = FR_Round3To6_cfa,VarName = "imueclt")
FR_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = FR_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
FR_Round3To6_cfa$CountryRound<-paste(FR_Round3To6_cfa$cntry,FR_Round3To6_cfa$essround,
                                     sep = "-")
FR_Round3To6_cfa$CountryRound<-factor(FR_Round3To6_cfa$CountryRound,
                                      levels = c("FR-3","FR-4","FR-5","FR-6"),
                                      labels = c("FR-3","FR-4","FR-5","FR-6"))

##Narrow the dataset down to the variables we need:
FR_Round3To6_cfa<-FR_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_FRthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_FRthreat_EcoCris<-cfa(model = model_FRthreat_EcoCris,
                                 data = FR_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_FRthreat_EcoCris<-cfa(model = model_FRthreat_EcoCris,
                                 data = FR_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_FRthreat_EcoCris<-cfa(model = model_FRthreat_EcoCris,
                                 data = FR_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))

summary(fit_Scalar_FRthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_FRthreat_EcoCris,fit_Metric_FRthreat_EcoCris,fit_Scalar_FRthreat_EcoCris)

##local fit:
lavTestLRT(fit_Config_FRthreat_EcoCris,fit_Metric_FRthreat_EcoCris,fit_Scalar_FRthreat_EcoCris)

##full metric and scalar invariance across 4 time points in France
