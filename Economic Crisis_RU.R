##Read the data in:
RU_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_RU_ESS3-6.csv")

##Select the five variables needed for MGCFA:
RU_Round3To6_cfa<-RU_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(RU_Round3To6_cfa,n=5)
tail(RU_Round3To6_cfa,n=5)

##Treating missing values
##Identify 88 as missing values for all 3 variables:
table(RU_Round3To6_cfa$imbgeco)
table(RU_Round3To6_cfa$imueclt)
table(RU_Round3To6_cfa$imwbcnt)

defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

RU_Round3To6_cfa[,3:5]<-defineNA_88(RU_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(RU_Round3To6_cfa$imbgeco))
sum(is.na(RU_Round3To6_cfa$imueclt))
sum(is.na(RU_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

RU_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = RU_Round3To6_cfa,VarName = "imbgeco")
RU_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = RU_Round3To6_cfa,VarName = "imueclt")
RU_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = RU_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
RU_Round3To6_cfa$CountryRound<-paste(RU_Round3To6_cfa$cntry,RU_Round3To6_cfa$essround,
                                     sep = "-")
RU_Round3To6_cfa$CountryRound<-factor(RU_Round3To6_cfa$CountryRound,
                                      levels = c("RU-3","RU-4","RU-5","RU-6"),
                                      labels = c("RU-3","RU-4","RU-5","RU-6"))

##Narrow the dataset down to the variables we need:
RU_Round3To6_cfa<-RU_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_RUthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_RUthreat_EcoCris<-cfa(model = model_RUthreat_EcoCris,
                                 data = RU_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_RUthreat_EcoCris<-cfa(model = model_RUthreat_EcoCris,
                                 data = RU_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_RUthreat_EcoCris<-cfa(model = model_RUthreat_EcoCris,
                                 data = RU_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_RUthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_RUthreat_EcoCris,fit_Metric_RUthreat_EcoCris,fit_Scalar_RUthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_RUthreat_EcoCris,fit_Metric_RUthreat_EcoCris,fit_Scalar_RUthreat_EcoCris)

lavTestScore(fit_Metric_RUthreat_EcoCris)
parTable(fit_Metric_RUthreat_EcoCris)

