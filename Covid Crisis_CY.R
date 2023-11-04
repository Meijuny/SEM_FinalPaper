##Read the data in:
CY_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_CY_ESS9-10.csv")

##Select the five variables needed for MGCFA:
CY_Round9To10_cfa<-CY_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(CY_Round9To10_cfa,n=5)
tail(CY_Round9To10_cfa,n=5)

##Treating missing values
##Identify 88,99 as missing values for all 3 variables:
table(CY_Round9To10_cfa$imbgeco)
table(CY_Round9To10_cfa$imueclt)
table(CY_Round9To10_cfa$imwbcnt)

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


CY_Round9To10_cfa[,3:5]<-defineNA_99(CY_Round9To10_cfa[,3:5])
CY_Round9To10_cfa[,3:5]<-defineNA_88(CY_Round9To10_cfa[,3:5])


##Double check the NA is correctly treated:
sum(is.na(CY_Round9To10_cfa$imbgeco))
sum(is.na(CY_Round9To10_cfa$imueclt))
sum(is.na(CY_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

CY_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = CY_Round9To10_cfa,VarName = "imbgeco")
CY_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = CY_Round9To10_cfa,VarName = "imueclt")
CY_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = CY_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
CY_Round9To10_cfa$CountryRound<-paste(CY_Round9To10_cfa$cntry,CY_Round9To10_cfa$essround,
                                      sep = "-")
CY_Round9To10_cfa$CountryRound<-factor(CY_Round9To10_cfa$CountryRound,
                                       levels = c("CY-9","CY-10"),
                                       labels = c("CY-9","CY-10"))

##Narrow the dataset down to the variables we need:
CY_Round9To10_cfa<-CY_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_CYthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_CYthreat_CovidCris<-cfa(model = model_CYthreat_CovidCris,
                                   data = CY_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_CYthreat_CovidCris<-cfa(model = model_CYthreat_CovidCris,
                                   data = CY_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_CYthreat_CovidCris<-cfa(model = model_CYthreat_CovidCris,
                                   data = CY_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_CYthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_CYthreat_CovidCris,fit_Metric_CYthreat_CovidCris,fit_Scalar_CYthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_CYthreat_CovidCris,fit_Metric_CYthreat_CovidCris,fit_Scalar_CYthreat_CovidCris)

lavTestScore(fit_Scalar_CYthreat_CovidCris)
parTable(fit_Scalar_CYthreat_CovidCris)