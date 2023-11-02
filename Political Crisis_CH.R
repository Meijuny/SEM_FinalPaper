##Read the data in:
CH_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_CH_ESS6-8.csv")

##Select the five variables needed for MGCFA:
CH_Round6To8_cfa<-CH_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(CH_Round6To8_cfa,n=5)
tail(CH_Round6To8_cfa,n=5)

##Treating missing values
##Identify 77,88 as missing values for all 3 variables:
table(CH_Round6To8_cfa$imbgeco)
table(CH_Round6To8_cfa$imueclt)
table(CH_Round6To8_cfa$imwbcnt)

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

CH_Round6To8_cfa[,3:5]<-defineNA_88(CH_Round6To8_cfa[,3:5])
CH_Round6To8_cfa[,3:5]<-defineNA_77(CH_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(CH_Round6To8_cfa$imbgeco))
sum(is.na(CH_Round6To8_cfa$imueclt))
sum(is.na(CH_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

CH_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = CH_Round6To8_cfa,VarName = "imbgeco")
CH_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = CH_Round6To8_cfa,VarName = "imueclt")
CH_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = CH_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
CH_Round6To8_cfa$CountryRound<-paste(CH_Round6To8_cfa$cntry,CH_Round6To8_cfa$essround,
                                     sep = "-")
CH_Round6To8_cfa$CountryRound<-factor(CH_Round6To8_cfa$CountryRound,
                                      levels = c("CH-6","CH-7","CH-8"),
                                      labels = c("CH-6","CH-7","CH-8"))

##Narrow the dataset down to the variables we need:
CH_Round6To8_cfa<-CH_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_CHthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_CHthreat_PoliCris<-cfa(model = model_CHthreat_PoliCris,
                                  data = CH_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_CHthreat_PoliCris<-cfa(model = model_CHthreat_PoliCris,
                                  data = CH_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_CHthreat_PoliCris<-cfa(model = model_CHthreat_PoliCris,
                                  data = CH_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_CHthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_CHthreat_PoliCris,fit_Metric_CHthreat_PoliCris,fit_Scalar_CHthreat_PoliCris)

#Local fit:
lavTestLRT(fit_Config_CHthreat_PoliCris, fit_Metric_CHthreat_PoliCris,fit_Scalar_CHthreat_PoliCris)

lavTestScore(fit_Scalar_CHthreat_PoliCris)
parTable(fit_Scalar_CHthreat_PoliCris)
