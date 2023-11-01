##Read the data in:
PL_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_PL_ESS3-6.csv")

##Select the five variables needed for MGCFA:
PL_Round3To6_cfa<-PL_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(PL_Round3To6_cfa,n=5)
tail(PL_Round3To6_cfa,n=5)

##Treating missing values
##Identify 77, 88 AND 99 as missing values for all 3 variables:
table(PL_Round3To6_cfa$imbgeco)
table(PL_Round3To6_cfa$imueclt)
table(PL_Round3To6_cfa$imwbcnt)

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

PL_Round3To6_cfa[,3:5]<-defineNA_88(PL_Round3To6_cfa[,3:5])
PL_Round3To6_cfa[,3:5]<-defineNA_77(PL_Round3To6_cfa[,3:5])
PL_Round3To6_cfa[,3:5]<-defineNA_99(PL_Round3To6_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(PL_Round3To6_cfa$imbgeco))
sum(is.na(PL_Round3To6_cfa$imueclt))
sum(is.na(PL_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

PL_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = PL_Round3To6_cfa,VarName = "imbgeco")
PL_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = PL_Round3To6_cfa,VarName = "imueclt")
PL_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = PL_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
PL_Round3To6_cfa$CountryRound<-paste(PL_Round3To6_cfa$cntry,PL_Round3To6_cfa$essround,
                                     sep = "-")
PL_Round3To6_cfa$CountryRound<-factor(PL_Round3To6_cfa$CountryRound,
                                      levels = c("PL-3","PL-4","PL-5","PL-6"),
                                      labels = c("PL-3","PL-4","PL-5","PL-6"))

##Narrow the dataset down to the variables we need:
PL_Round3To6_cfa<-PL_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_PLthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_PLthreat_EcoCris<-cfa(model = model_PLthreat_EcoCris,
                                 data = PL_Round3To6_cfa,
                                 group = "CountryRound")

##Metric Invariance
fit_Metric_PLthreat_EcoCris<-cfa(model = model_PLthreat_EcoCris,
                                 data = PL_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_PLthreat_EcoCris<-cfa(model = model_PLthreat_EcoCris,
                                 data = PL_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_PLthreat_EcoCris,fit.measures=TRUE,standardized=TRUE)

##global fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_PLthreat_EcoCris,fit_Metric_PLthreat_EcoCris,fit_Scalar_PLthreat_EcoCris)

#local fit
lavTestLRT(fit_Config_PLthreat_EcoCris,fit_Metric_PLthreat_EcoCris,fit_Scalar_PLthreat_EcoCris)

lavTestScore(fit_Scalar_PLthreat_EcoCris)
parTable(fit_Scalar_PLthreat_EcoCris)
