##Read the data in:
EE_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_EE_ESS6-8.csv")

##Select the five variables needed for MGCFA:
EE_Round6To8_cfa<-EE_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(EE_Round6To8_cfa,n=5)
tail(EE_Round6To8_cfa,n=5)

##Treating missing values
##Identify 88 as missing values for all 3 variables:
table(EE_Round6To8_cfa$imbgeco)
table(EE_Round6To8_cfa$imueclt)
table(EE_Round6To8_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

EE_Round6To8_cfa[,3:5]<-defineNA_88(EE_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(EE_Round6To8_cfa$imbgeco))
sum(is.na(EE_Round6To8_cfa$imueclt))
sum(is.na(EE_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

EE_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = EE_Round6To8_cfa,VarName = "imbgeco")
EE_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = EE_Round6To8_cfa,VarName = "imueclt")
EE_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = EE_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
EE_Round6To8_cfa$CountryRound<-paste(EE_Round6To8_cfa$cntry,EE_Round6To8_cfa$essround,
                                     sep = "-")
EE_Round6To8_cfa$CountryRound<-factor(EE_Round6To8_cfa$CountryRound,
                                      levels = c("EE-6","EE-7","EE-8"),
                                      labels = c("EE-6","EE-7","EE-8"))

##Narrow the dataset down to the variables we need:
EE_Round6To8_cfa<-EE_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_EEthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_EEthreat_PoliCris<-cfa(model = model_EEthreat_PoliCris,
                                  data = EE_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_EEthreat_PoliCris<-cfa(model = model_EEthreat_PoliCris,
                                  data = EE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_EEthreat_PoliCris<-cfa(model = model_EEthreat_PoliCris,
                                  data = EE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_EEthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_EEthreat_PoliCris,fit_Metric_EEthreat_PoliCris,fit_Scalar_EEthreat_PoliCris)

#Local fit:
lavTestLRT(fit_Config_EEthreat_PoliCris, fit_Metric_EEthreat_PoliCris, fit_Scalar_EEthreat_PoliCris)

lavTestScore(fit_Scalar_EEthreat_PoliCris)
parTable(fit_Scalar_EEthreat_PoliCris)
