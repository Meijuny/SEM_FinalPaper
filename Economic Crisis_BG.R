##Read the data in:
BG_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_BG_ESS3-6.csv")

##Select the five variables needed for MGCFA:
BG_Round3To6_cfa<-BG_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(BG_Round3To6_cfa,n=5)
tail(BG_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 88 and 99 as missing values for all 3 variables:
table(BG_Round3To6_cfa$imbgeco)
table(BG_Round3To6_cfa$imueclt)
table(BG_Round3To6_cfa$imwbcnt)

#Use a function to quickly replace 88 and 99 as NA:
defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
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

BG_Round3To6_cfa[,3:5]<-defineNA_88(BG_Round3To6_cfa[,3:5])
BG_Round3To6_cfa[,3:5]<-defineNA_99(BG_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(BG_Round3To6_cfa$imbgeco))
sum(is.na(BG_Round3To6_cfa$imueclt))
sum(is.na(BG_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

BG_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = BG_Round3To6_cfa,VarName = "imbgeco")
BG_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = BG_Round3To6_cfa,VarName = "imueclt")
BG_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = BG_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
BG_Round3To6_cfa$CountryRound<-paste(BG_Round3To6_cfa$cntry,BG_Round3To6_cfa$essround,
                                     sep = "-")
BG_Round3To6_cfa$CountryRound<-factor(BG_Round3To6_cfa$CountryRound,
                                      levels = c("BG-3","BG-4","BG-5","BG-6"),
                                      labels = c("BG-3","BG-4","BG-5","BG-6"))

##Narrow the dataset down to the variables we need:
BG_Round3To6_cfa<-BG_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_BGthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_BGthreat_EcoCris<-cfa(model = model_BGthreat_EcoCris,
                                 data = BG_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_BGthreat_EcoCris<-cfa(model = model_BGthreat_EcoCris,
                                 data = BG_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_BGthreat_EcoCris<-cfa(model = model_BGthreat_EcoCris,
                                 data = BG_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_BGthreat_EcoCris,fit_Metric_BGthreat_EcoCris,fit_Scalar_BGthreat_EcoCris)


##NOT EVEN Metric Invariance
lavTestLRT(fit_Config_BGthreat_EcoCris,fit_Metric_BGthreat_EcoCris,fit_Scalar_BGthreat_EcoCris)
lavTestScore(fit_Metric_BGthreat_EcoCris)
parTable(fit_Metric_BGthreat_EcoCris)


