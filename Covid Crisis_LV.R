##Read the data in:
LV_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_LV_ESS9-10.csv")

##Select the five variables needed for MGCFA:
LV_Round9To10_cfa<-LV_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(LV_Round9To10_cfa,n=5)
tail(LV_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77,88, 99 as missing values for all 3 variables:
table(LV_Round9To10_cfa$imbgeco)
table(LV_Round9To10_cfa$imueclt)
table(LV_Round9To10_cfa$imwbcnt)

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

LV_Round9To10_cfa[,3:5]<-defineNA_77(LV_Round9To10_cfa[,3:5])
LV_Round9To10_cfa[,3:5]<-defineNA_88(LV_Round9To10_cfa[,3:5])
LV_Round9To10_cfa[,3:5]<-defineNA_99(LV_Round9To10_cfa[,3:5])


##Double check the NA is correctly treated:
sum(is.na(LV_Round9To10_cfa$imbgeco))
sum(is.na(LV_Round9To10_cfa$imueclt))
sum(is.na(LV_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

LV_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = LV_Round9To10_cfa,VarName = "imbgeco")
LV_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = LV_Round9To10_cfa,VarName = "imueclt")
LV_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = LV_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
LV_Round9To10_cfa$CountryRound<-paste(LV_Round9To10_cfa$cntry,LV_Round9To10_cfa$essround,
                                      sep = "-")
LV_Round9To10_cfa$CountryRound<-factor(LV_Round9To10_cfa$CountryRound,
                                       levels = c("LV-9","LV-10"),
                                       labels = c("LV-9","LV-10"))

##Narrow the dataset down to the variables we need:
LV_Round9To10_cfa<-LV_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_LVthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_LVthreat_CovidCris<-cfa(model = model_LVthreat_CovidCris,
                                   data = LV_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_LVthreat_CovidCris<-cfa(model = model_LVthreat_CovidCris,
                                   data = LV_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_LVthreat_CovidCris<-cfa(model = model_LVthreat_CovidCris,
                                   data = LV_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_LVthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_LVthreat_CovidCris,fit_Metric_LVthreat_CovidCris,fit_Scalar_LVthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_LVthreat_CovidCris,fit_Metric_LVthreat_CovidCris,fit_Scalar_LVthreat_CovidCris)
