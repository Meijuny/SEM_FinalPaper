##Read the data in:
CY_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_CY_ESS3-6.csv")

##Select the five variables needed for MGCFA:
CY_Round3To6_cfa<-CY_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(CY_Round3To6_cfa,n=5)
tail(CY_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 88 and 99 as missing values for all 3 variables, and 77 for imueclt:
table(CY_Round3To6_cfa$imbgeco)
table(CY_Round3To6_cfa$imueclt)
table(CY_Round3To6_cfa$imwbcnt)

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

CY_Round3To6_cfa[,3:5]<-defineNA_88(CY_Round3To6_cfa[,3:5])
CY_Round3To6_cfa[,3:5]<-defineNA_99(CY_Round3To6_cfa[,3:5])
CY_Round3To6_cfa$imueclt<-as.numeric(sub(77,NA,CY_Round3To6_cfa$imueclt))

##Double check the NA is correctly treated:
sum(is.na(CY_Round3To6_cfa$imbgeco))
sum(is.na(CY_Round3To6_cfa$imueclt))
sum(is.na(CY_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

CY_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = CY_Round3To6_cfa,VarName = "imbgeco")
CY_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = CY_Round3To6_cfa,VarName = "imueclt")
CY_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = CY_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
CY_Round3To6_cfa$CountryRound<-paste(CY_Round3To6_cfa$cntry,CY_Round3To6_cfa$essround,
                                     sep = "-")
CY_Round3To6_cfa$CountryRound<-factor(CY_Round3To6_cfa$CountryRound,
                                      levels = c("CY-3","CY-4","CY-5","CY-6"),
                                      labels = c("CY-3","CY-4","CY-5","CY-6"))

##Narrow the dataset down to the variables we need:
CY_Round3To6_cfa<-CY_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_CYthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_CYthreat_EcoCris<-cfa(model = model_CYthreat_EcoCris,
                                 data = CY_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_CYthreat_EcoCris<-cfa(model = model_CYthreat_EcoCris,
                                 data = CY_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_CYthreat_EcoCris<-cfa(model = model_CYthreat_EcoCris,
                                 data = CY_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_CYthreat_EcoCris,fit_Metric_CYthreat_EcoCris,fit_Scalar_CYthreat_EcoCris)

##Full metric invariance is reached 
lavTestLRT(fit_Config_CYthreat_EcoCris,fit_Metric_CYthreat_EcoCris,fit_Scalar_CYthreat_EcoCris)

##----------------------------------------------------------------------------------------------
lavTestScore(fit_Scalar_CYthreat_EcoCris)
parTable(fit_Scalar_CYthreat_EcoCris)

##culThreat intercept in group 4 (Round 6) and potentially, culThreat intercept in group 2 (Round 4)


