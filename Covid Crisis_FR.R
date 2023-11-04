##Read the data in:
FR_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_FR_ESS9-10.csv")

##Select the five variables needed for MGCFA:
FR_Round9To10_cfa<-FR_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(FR_Round9To10_cfa,n=5)
tail(FR_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77,88 as missing values for all 3 variables:
table(FR_Round9To10_cfa$imbgeco)
table(FR_Round9To10_cfa$imueclt)
table(FR_Round9To10_cfa$imwbcnt)

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


FR_Round9To10_cfa[,3:5]<-defineNA_77(FR_Round9To10_cfa[,3:5])
FR_Round9To10_cfa[,3:5]<-defineNA_88(FR_Round9To10_cfa[,3:5])


##Double check the NA is correctly treated:
sum(is.na(FR_Round9To10_cfa$imbgeco))
sum(is.na(FR_Round9To10_cfa$imueclt))
sum(is.na(FR_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

FR_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = FR_Round9To10_cfa,VarName = "imbgeco")
FR_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = FR_Round9To10_cfa,VarName = "imueclt")
FR_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = FR_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
FR_Round9To10_cfa$CountryRound<-paste(FR_Round9To10_cfa$cntry,FR_Round9To10_cfa$essround,
                                      sep = "-")
FR_Round9To10_cfa$CountryRound<-factor(FR_Round9To10_cfa$CountryRound,
                                       levels = c("FR-9","FR-10"),
                                       labels = c("FR-9","FR-10"))

##Narrow the dataset down to the variables we need:
FR_Round9To10_cfa<-FR_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_FRthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_FRthreat_CovidCris<-cfa(model = model_FRthreat_CovidCris,
                                   data = FR_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_FRthreat_CovidCris<-cfa(model = model_FRthreat_CovidCris,
                                   data = FR_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_FRthreat_CovidCris<-cfa(model = model_FRthreat_CovidCris,
                                   data = FR_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_FRthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_FRthreat_CovidCris,fit_Metric_FRthreat_CovidCris,fit_Scalar_FRthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_FRthreat_CovidCris,fit_Metric_FRthreat_CovidCris,fit_Scalar_FRthreat_CovidCris)

lavTestScore(fit_Scalar_FRthreat_CovidCris)
parTable(fit_Scalar_FRthreat_CovidCris)
