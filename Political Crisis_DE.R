##Read the data in:
DE_Round6To8<-read.csv("./ESS Data/Political Crisis/PoliticalCrisis_DE_ESS6-8.csv")

##Select the five variables needed for MGCFA:
DE_Round6To8_cfa<-DE_Round6To8 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(DE_Round6To8_cfa,n=5)
tail(DE_Round6To8_cfa,n=5)

##Treating missing values
##Identify 77,88 as missing values for all 3 variables:
table(DE_Round6To8_cfa$imbgeco)
table(DE_Round6To8_cfa$imueclt)
table(DE_Round6To8_cfa$imwbcnt)

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

DE_Round6To8_cfa[,3:5]<-defineNA_88(DE_Round6To8_cfa[,3:5])
DE_Round6To8_cfa[,3:5]<-defineNA_77(DE_Round6To8_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(DE_Round6To8_cfa$imbgeco))
sum(is.na(DE_Round6To8_cfa$imueclt))
sum(is.na(DE_Round6To8_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

DE_Round6To8_cfa$EcoThreat<-ReverseCoding_scale10(data = DE_Round6To8_cfa,VarName = "imbgeco")
DE_Round6To8_cfa$CulThreat<-ReverseCoding_scale10(data = DE_Round6To8_cfa,VarName = "imueclt")
DE_Round6To8_cfa$GenThreat<-ReverseCoding_scale10(data = DE_Round6To8_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
DE_Round6To8_cfa$CountryRound<-paste(DE_Round6To8_cfa$cntry,DE_Round6To8_cfa$essround,
                                     sep = "-")
DE_Round6To8_cfa$CountryRound<-factor(DE_Round6To8_cfa$CountryRound,
                                      levels = c("DE-6","DE-7","DE-8"),
                                      labels = c("DE-6","DE-7","DE-8"))

##Narrow the dataset down to the variables we need:
DE_Round6To8_cfa<-DE_Round6To8_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_DEthreat_PoliCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_DEthreat_PoliCris<-cfa(model = model_DEthreat_PoliCris,
                                  data = DE_Round6To8_cfa,
                                  group = "CountryRound")

##Metric Invariance:
fit_Metric_DEthreat_PoliCris<-cfa(model = model_DEthreat_PoliCris,
                                  data = DE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_DEthreat_PoliCris<-cfa(model = model_DEthreat_PoliCris,
                                  data = DE_Round6To8_cfa,
                                  group = "CountryRound",
                                  group.equal=c("loadings","intercepts"))
summary(fit_Scalar_DEthreat_PoliCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_DEthreat_PoliCris,fit_Metric_DEthreat_PoliCris,fit_Scalar_DEthreat_PoliCris)

#local fit:
lavTestLRT(fit_Config_DEthreat_PoliCris,fit_Metric_DEthreat_PoliCris,fit_Scalar_DEthreat_PoliCris)

lavTestScore(fit_Scalar_DEthreat_PoliCris)
parTable(fit_Scalar_DEthreat_PoliCris)

