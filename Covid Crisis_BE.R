##Read the data in:
BE_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_BE_ESS9-10.csv")

##Select the five variables needed for MGCFA:
BE_Round9To10_cfa<-BE_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(BE_Round9To10_cfa,n=5)
tail(BE_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77 and 88 as missing values for all 3 variables:
table(BE_Round9To10_cfa$imbgeco)
table(BE_Round9To10_cfa$imueclt)
table(BE_Round9To10_cfa$imwbcnt)

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


BE_Round9To10_cfa[,3:5]<-defineNA_77(BE_Round9To10_cfa[,3:5])
BE_Round9To10_cfa[,3:5]<-defineNA_88(BE_Round9To10_cfa[,3:5])


##Double check the NA is correctly treated:
sum(is.na(BE_Round9To10_cfa$imbgeco))
sum(is.na(BE_Round9To10_cfa$imueclt))
sum(is.na(BE_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

BE_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = BE_Round9To10_cfa,VarName = "imbgeco")
BE_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = BE_Round9To10_cfa,VarName = "imueclt")
BE_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = BE_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
BE_Round9To10_cfa$CountryRound<-paste(BE_Round9To10_cfa$cntry,BE_Round9To10_cfa$essround,
                                      sep = "-")
BE_Round9To10_cfa$CountryRound<-factor(BE_Round9To10_cfa$CountryRound,
                                       levels = c("BE-9","BE-10"),
                                       labels = c("BE-9","BE-10"))

##Narrow the dataset down to the variables we need:
BE_Round9To10_cfa<-BE_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_BEthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_BEthreat_CovidCris<-cfa(model = model_BEthreat_CovidCris,
                                   data = BE_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_BEthreat_CovidCris<-cfa(model = model_BEthreat_CovidCris,
                                   data = BE_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_BEthreat_CovidCris<-cfa(model = model_BEthreat_CovidCris,
                                   data = BE_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_BEthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_BEthreat_CovidCris,fit_Metric_BEthreat_CovidCris,fit_Scalar_BEthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_BEthreat_CovidCris,fit_Metric_BEthreat_CovidCris,fit_Scalar_BEthreat_CovidCris)
