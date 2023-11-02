##Read the data in:
PL_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_PL_ESS6-8.csv")

##Select the five variables needed for MGCFA:
PL_Round6To8_cfa<-PL_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(PL_Round6To8_cfa,n=5)
tail(PL_Round6To8_cfa,n=5)

##Treating missing values
##Identify 77,88,99 as missing values for all 3 variables:
table(PL_Round6To8_cfa$imbgeco)
table(PL_Round6To8_cfa$imueclt)
table(PL_Round6To8_cfa$imwbcnt)

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

PL_Round6To8_cfa[,3:5]<-defineNA_88(PL_Round6To8_cfa[,3:5])
PL_Round6To8_cfa[,3:5]<-defineNA_77(PL_Round6To8_cfa[,3:5])
PL_Round6To8_cfa[,3:5]<-defineNA_99(PL_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(PL_Round6To8_cfa$imbgeco))
sum(is.na(PL_Round6To8_cfa$imueclt))
sum(is.na(PL_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

PL_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = PL_Round6To8_cfa,VarName = "imbgeco")
PL_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = PL_Round6To8_cfa,VarName = "imueclt")
PL_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = PL_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
PL_Round6To8_cfa$CountryRound<-paste(PL_Round6To8_cfa$cntry,PL_Round6To8_cfa$essround,
                                     sep = "-")
PL_Round6To8_cfa$CountryRound<-factor(PL_Round6To8_cfa$CountryRound,
                                      levels = c("PL-6","PL-7","PL-8"),
                                      labels = c("PL-6","PL-7","PL-8"))

##Narrow the dataset down to the variables we need:
PL_Round6To8_cfa<-PL_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_PLthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_PLthreat_PoliCris<-cfa(model = model_PLthreat_PoliCris,
                                  data = PL_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_PLthreat_PoliCris<-cfa(model = model_PLthreat_PoliCris,
                                  data = PL_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_PLthreat_PoliCris<-cfa(model = model_PLthreat_PoliCris,
                                  data = PL_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_PLthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_PLthreat_PoliCris,fit_Metric_PLthreat_PoliCris,fit_Scalar_PLthreat_PoliCris)

#Local fit:
lavTestLRT(fit_Config_PLthreat_PoliCris, fit_Metric_PLthreat_PoliCris,fit_Scalar_PLthreat_PoliCris)

lavTestScore(fit_Metric_PLthreat_PoliCris)
parTable(fit_Metric_PLthreat_PoliCris)

lavTestScore(fit_Scalar_PLthreat_PoliCris)
parTable(fit_Scalar_PLthreat_PoliCris)
