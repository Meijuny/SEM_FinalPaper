##Read the data in:
DE_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_DE_ESS3-6.csv")

##Select the five variables needed for MGCFA:
DE_Round3To6_cfa<-DE_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(DE_Round3To6_cfa,n=5)
tail(DE_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 77 and 88 as missing values for all 3 variables:
table(DE_Round3To6_cfa$imbgeco)
table(DE_Round3To6_cfa$imueclt)
table(DE_Round3To6_cfa$imwbcnt)

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

DE_Round3To6_cfa[,3:5]<-defineNA_88(DE_Round3To6_cfa[,3:5])
DE_Round3To6_cfa[,3:5]<-defineNA_77(DE_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(DE_Round3To6_cfa$imbgeco))
sum(is.na(DE_Round3To6_cfa$imueclt))
sum(is.na(DE_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

DE_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = DE_Round3To6_cfa,VarName = "imbgeco")
DE_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = DE_Round3To6_cfa,VarName = "imueclt")
DE_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = DE_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
DE_Round3To6_cfa$CountryRound<-paste(DE_Round3To6_cfa$cntry,DE_Round3To6_cfa$essround,
                                     sep = "-")
DE_Round3To6_cfa$CountryRound<-factor(DE_Round3To6_cfa$CountryRound,
                                      levels = c("DE-3","DE-4","DE-5","DE-6"),
                                      labels = c("DE-3","DE-4","DE-5","DE-6"))

##Narrow the dataset down to the variables we need:
DE_Round3To6_cfa<-DE_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_DEthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_DEthreat_EcoCris<-cfa(model = model_DEthreat_EcoCris,
                                 data = DE_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_DEthreat_EcoCris<-cfa(model = model_DEthreat_EcoCris,
                                 data = DE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_DEthreat_EcoCris<-cfa(model = model_DEthreat_EcoCris,
                                 data = DE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_DEthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_DEthreat_EcoCris,fit_Metric_DEthreat_EcoCris,fit_Scalar_DEthreat_EcoCris)

##local fit:
lavTestLRT(fit_Config_DEthreat_EcoCris,fit_Metric_DEthreat_EcoCris,fit_Scalar_DEthreat_EcoCris)

##No full metric and scalar invariance:
lavTestScore(fit_Metric_DEthreat_EcoCris)
parTable(fit_Metric_DEthreat_EcoCris)
lavTestScore(fit_Scalar_DEthreat_EcoCris)
parTable(fit_Scalar_DEthreat_EcoCris)



