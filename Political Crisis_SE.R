##Read the data in:
SE_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_SE_ESS6-8.csv")

##Select the five variables needed for MGCFA:
SE_Round6To8_cfa<-SE_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(SE_Round6To8_cfa,n=5)
tail(SE_Round6To8_cfa,n=5)

##Treating missing values
##Identify 77,88 as missing values for all 3 variables:
table(SE_Round6To8_cfa$imbgeco)
table(SE_Round6To8_cfa$imueclt)
table(SE_Round6To8_cfa$imwbcnt)

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

SE_Round6To8_cfa[,3:5]<-defineNA_88(SE_Round6To8_cfa[,3:5])
SE_Round6To8_cfa[,3:5]<-defineNA_77(SE_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(SE_Round6To8_cfa$imbgeco))
sum(is.na(SE_Round6To8_cfa$imueclt))
sum(is.na(SE_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

SE_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = SE_Round6To8_cfa,VarName = "imbgeco")
SE_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = SE_Round6To8_cfa,VarName = "imueclt")
SE_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = SE_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
SE_Round6To8_cfa$CountryRound<-paste(SE_Round6To8_cfa$cntry,SE_Round6To8_cfa$essround,
                                     sep = "-")
SE_Round6To8_cfa$CountryRound<-factor(SE_Round6To8_cfa$CountryRound,
                                      levels = c("SE-6","SE-7","SE-8"),
                                      labels = c("SE-6","SE-7","SE-8"))

##Narrow the dataset down to the variables we need:
SE_Round6To8_cfa<-SE_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_SEthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_SEthreat_PoliCris<-cfa(model = model_SEthreat_PoliCris,
                                  data = SE_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_SEthreat_PoliCris<-cfa(model = model_SEthreat_PoliCris,
                                  data = SE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_SEthreat_PoliCris<-cfa(model = model_SEthreat_PoliCris,
                                  data = SE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_SEthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_SEthreat_PoliCris,fit_Metric_SEthreat_PoliCris,fit_Scalar_SEthreat_PoliCris)

#Local fit:
lavTestLRT(fit_Config_SEthreat_PoliCris, fit_Metric_SEthreat_PoliCris,fit_Scalar_SEthreat_PoliCris)

lavTestScore(fit_Metric_SEthreat_PoliCris)
parTable(fit_Metric_SEthreat_PoliCris)
lavTestScore(fit_Scalar_SEthreat_PoliCris)
parTable(fit_Scalar_SEthreat_PoliCris)
