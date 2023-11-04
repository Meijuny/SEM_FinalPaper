##Read the data in:
SI_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_SI_ESS6-8.csv")

##Select the five variables needed for MGCFA:
SI_Round6To8_cfa<-SI_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(SI_Round6To8_cfa,n=5)
tail(SI_Round6To8_cfa,n=5)

##Treating missing values
##Identify 77,88, 99 as missing values for all 3 variables:
table(SI_Round6To8_cfa$imbgeco)
table(SI_Round6To8_cfa$imueclt)
table(SI_Round6To8_cfa$imwbcnt)

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

defineNA_99<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(99,NA,data[,i]))    
        }
        return(output)
}

SI_Round6To8_cfa[,3:5]<-defineNA_88(SI_Round6To8_cfa[,3:5])
SI_Round6To8_cfa[,3:5]<-defineNA_77(SI_Round6To8_cfa[,3:5])
SI_Round6To8_cfa[,3:5]<-defineNA_99(SI_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(SI_Round6To8_cfa$imbgeco))
sum(is.na(SI_Round6To8_cfa$imueclt))
sum(is.na(SI_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

SI_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = SI_Round6To8_cfa,VarName = "imbgeco")
SI_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = SI_Round6To8_cfa,VarName = "imueclt")
SI_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = SI_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
SI_Round6To8_cfa$CountryRound<-paste(SI_Round6To8_cfa$cntry,SI_Round6To8_cfa$essround,
                                     sep = "-")
SI_Round6To8_cfa$CountryRound<-factor(SI_Round6To8_cfa$CountryRound,
                                      levels = c("SI-6","SI-7","SI-8"),
                                      labels = c("SI-6","SI-7","SI-8"))

##Narrow the dataset down to the variables we need:
SI_Round6To8_cfa<-SI_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_SIthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_SIthreat_PoliCris<-cfa(model = model_SIthreat_PoliCris,
                                  data = SI_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_SIthreat_PoliCris<-cfa(model = model_SIthreat_PoliCris,
                                  data = SI_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_SIthreat_PoliCris<-cfa(model = model_SIthreat_PoliCris,
                                  data = SI_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_SIthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_SIthreat_PoliCris,fit_Metric_SIthreat_PoliCris,fit_Scalar_SIthreat_PoliCris)

#Local fit:
lavTestLRT(fit_Config_SIthreat_PoliCris, fit_Metric_SIthreat_PoliCris,fit_Scalar_SIthreat_PoliCris)

#chi-square details
lavTestScore(fit_Metric_SIthreat_PoliCris)
parTable(fit_Metric_SIthreat_PoliCris)

lavTestScore(fit_Scalar_SIthreat_PoliCris)
parTable(fit_Scalar_SIthreat_PoliCris)
