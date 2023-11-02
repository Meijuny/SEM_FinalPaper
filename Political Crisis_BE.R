##Read the data in:
BE_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_BE_ESS6-8.csv")

##Select the five variables needed for MGCFA:
BE_Round6To8_cfa<-BE_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(BE_Round6To8_cfa,n=5)
tail(BE_Round6To8_cfa,n=5)

##Treating missing values
##Identify 88 as missing values for all 3 variables:
table(BE_Round6To8_cfa$imbgeco)
table(BE_Round6To8_cfa$imueclt)
table(BE_Round6To8_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

BE_Round6To8_cfa[,3:5]<-defineNA_88(BE_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(BE_Round6To8_cfa$imbgeco))
sum(is.na(BE_Round6To8_cfa$imueclt))
sum(is.na(BE_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

BE_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = BE_Round6To8_cfa,VarName = "imbgeco")
BE_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = BE_Round6To8_cfa,VarName = "imueclt")
BE_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = BE_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
BE_Round6To8_cfa$CountryRound<-paste(BE_Round6To8_cfa$cntry,BE_Round6To8_cfa$essround,
                                     sep = "-")
BE_Round6To8_cfa$CountryRound<-factor(BE_Round6To8_cfa$CountryRound,
                                      levels = c("BE-6","BE-7","BE-8"),
                                      labels = c("BE-6","BE-7","BE-8"))

##Narrow the dataset down to the variables we need:
BE_Round6To8_cfa<-BE_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_BEthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_BEthreat_PoliCris<-cfa(model = model_BEthreat_PoliCris,
                                  data = BE_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_BEthreat_PoliCris<-cfa(model = model_BEthreat_PoliCris,
                                  data = BE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_BEthreat_PoliCris<-cfa(model = model_BEthreat_PoliCris,
                                  data = BE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_BEthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_BEthreat_PoliCris,fit_Metric_BEthreat_PoliCris,fit_Scalar_BEthreat_PoliCris)

##local fit:
lavTestLRT(fit_Config_BEthreat_PoliCris,fit_Metric_BEthreat_PoliCris,fit_Scalar_BEthreat_PoliCris)

lavTestScore(fit_Metric_BEthreat_PoliCris)
parTable(fit_Metric_BEthreat_PoliCris)
lavTestScore(fit_Scalar_BEthreat_PoliCris)
parTable(fit_Scalar_BEthreat_PoliCris)



