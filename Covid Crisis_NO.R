##Read the data in:
NO_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_NO_ESS9-10.csv")

##Select the five variables needed for MGCFA:
NO_Round9To10_cfa<-NO_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(NO_Round9To10_cfa,n=5)
tail(NO_Round9To10_cfa,n=5)

##Treating missing values
##Identify 88,99 as missing values for all 3 variables:
table(NO_Round9To10_cfa$imbgeco)
table(NO_Round9To10_cfa$imueclt)
table(NO_Round9To10_cfa$imwbcnt)

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


NO_Round9To10_cfa[,3:5]<-defineNA_99(NO_Round9To10_cfa[,3:5])
NO_Round9To10_cfa[,3:5]<-defineNA_88(NO_Round9To10_cfa[,3:5])


##Double check the NA is correctly treated:
sum(is.na(NO_Round9To10_cfa$imbgeco))
sum(is.na(NO_Round9To10_cfa$imueclt))
sum(is.na(NO_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

NO_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = NO_Round9To10_cfa,VarName = "imbgeco")
NO_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = NO_Round9To10_cfa,VarName = "imueclt")
NO_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = NO_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
NO_Round9To10_cfa$CountryRound<-paste(NO_Round9To10_cfa$cntry,NO_Round9To10_cfa$essround,
                                      sep = "-")
NO_Round9To10_cfa$CountryRound<-factor(NO_Round9To10_cfa$CountryRound,
                                       levels = c("NO-9","NO-10"),
                                       labels = c("NO-9","NO-10"))

##Narrow the dataset down to the variables we need:
NO_Round9To10_cfa<-NO_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_NOthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_NOthreat_CovidCris<-cfa(model = model_NOthreat_CovidCris,
                                   data = NO_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_NOthreat_CovidCris<-cfa(model = model_NOthreat_CovidCris,
                                   data = NO_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_NOthreat_CovidCris<-cfa(model = model_NOthreat_CovidCris,
                                   data = NO_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_NOthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_NOthreat_CovidCris,fit_Metric_NOthreat_CovidCris,fit_Scalar_NOthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_NOthreat_CovidCris,fit_Metric_NOthreat_CovidCris,fit_Scalar_NOthreat_CovidCris)

lavTestScore(fit_Scalar_NOthreat_CovidCris)
parTable(fit_Scalar_NOthreat_CovidCris)
