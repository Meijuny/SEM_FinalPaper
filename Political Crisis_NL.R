##Read the data in:
NL_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_NL_ESS6-8.csv")

##Select the five variables needed for MGCFA:
NL_Round6To8_cfa<-NL_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(NL_Round6To8_cfa,n=5)
tail(NL_Round6To8_cfa,n=5)

##Treating missing values
##Identify 77,88 as missing values for all 3 variables:
table(NL_Round6To8_cfa$imbgeco)
table(NL_Round6To8_cfa$imueclt)
table(NL_Round6To8_cfa$imwbcnt)

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

NL_Round6To8_cfa[,3:5]<-defineNA_88(NL_Round6To8_cfa[,3:5])
NL_Round6To8_cfa[,3:5]<-defineNA_77(NL_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(NL_Round6To8_cfa$imbgeco))
sum(is.na(NL_Round6To8_cfa$imueclt))
sum(is.na(NL_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

NL_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = NL_Round6To8_cfa,VarName = "imbgeco")
NL_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = NL_Round6To8_cfa,VarName = "imueclt")
NL_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = NL_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
NL_Round6To8_cfa$CountryRound<-paste(NL_Round6To8_cfa$cntry,NL_Round6To8_cfa$essround,
                                     sep = "-")
NL_Round6To8_cfa$CountryRound<-factor(NL_Round6To8_cfa$CountryRound,
                                      levels = c("NL-6","NL-7","NL-8"),
                                      labels = c("NL-6","NL-7","NL-8"))

##Narrow the dataset down to the variables we need:
NL_Round6To8_cfa<-NL_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_NLthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_NLthreat_PoliCris<-cfa(model = model_NLthreat_PoliCris,
                                  data = NL_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_NLthreat_PoliCris<-cfa(model = model_NLthreat_PoliCris,
                                  data = NL_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_NLthreat_PoliCris<-cfa(model = model_NLthreat_PoliCris,
                                  data = NL_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_NLthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_NLthreat_PoliCris,fit_Metric_NLthreat_PoliCris,fit_Scalar_NLthreat_PoliCris)

#Local fit:
lavTestLRT(fit_Config_NLthreat_PoliCris, fit_Metric_NLthreat_PoliCris,fit_Scalar_NLthreat_PoliCris)

lavTestScore(fit_Scalar_NLthreat_PoliCris)
parTable(fit_Scalar_NLthreat_PoliCris)

