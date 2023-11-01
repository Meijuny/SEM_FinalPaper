##Read the data in:
BE_Round3To6<-read.csv("./ESS Data/Economic Crisis/EconomicCrisis_BE_ESS3-6.csv")

##Select the five variables needed for MGCFA:
BE_Round3To6_cfa<-BE_Round3To6 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(BE_Round3To6_cfa,n=5)
tail(BE_Round3To6_cfa,n=5)

##Treating missing values
#First: Identify 88 as missing values for all 3 variables and 77 as missing value for imwbcnt:
table(BE_Round3To6_cfa$imbgeco)
table(BE_Round3To6_cfa$imueclt)
table(BE_Round3To6_cfa$imwbcnt)

#Use a function to quickly replace 88 as NA:
defineNA_88<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(88,NA,data[,i]))    
        }
        return(output)
}

BE_Round3To6_cfa[,3:5]<-defineNA_88(BE_Round3To6_cfa[,3:5])

BE_Round3To6_cfa$imwbcnt<-as.numeric(sub(77,NA,BE_Round3To6_cfa$imwbcnt))

##Double check the NA is correctly treated:
sum(is.na(BE_Round3To6_cfa$imbgeco))
sum(is.na(BE_Round3To6_cfa$imueclt))
sum(is.na(BE_Round3To6_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

BE_Round3To6_cfa$EcoThreat<-ReverseCoding_scale10(data = BE_Round3To6_cfa,VarName = "imbgeco")
BE_Round3To6_cfa$CulThreat<-ReverseCoding_scale10(data = BE_Round3To6_cfa,VarName = "imueclt")
BE_Round3To6_cfa$GenThreat<-ReverseCoding_scale10(data = BE_Round3To6_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
BE_Round3To6_cfa$CountryRound<-paste(BE_Round3To6_cfa$cntry,BE_Round3To6_cfa$essround,
                                     sep = "-")
BE_Round3To6_cfa$CountryRound<-factor(BE_Round3To6_cfa$CountryRound,
                                      levels = c("BE-3","BE-4","BE-5","BE-6"),
                                      labels = c("BE-3","BE-4","BE-5","BE-6"))

##Narrow the dataset down to the variables we need:
BE_Round3To6_cfa<-BE_Round3To6_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##define model for all invariance:
model_BEthreat_EcoCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural Invariance
fit_Config_BEthreat_EcoCris<-cfa(model = model_BEthreat_EcoCris,
                                 data = BE_Round3To6_cfa,
                                 group = "CountryRound")

summary(fit_Config_BEthreat_EcoCris, standardized=TRUE)

##Metric Invariance
fit_Metric_BEthreat_EcoCris<-cfa(model = model_BEthreat_EcoCris,
                                 data = BE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings"))

##Scalar Invariance
fit_Scalar_BEthreat_EcoCris<-cfa(model = model_BEthreat_EcoCris,
                                 data = BE_Round3To6_cfa,
                                 group = "CountryRound",
                                 group.equal=c("loadings","intercepts"))
summary(fit_Scalar_BEthreat_EcoCris,fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_BEthreat_EcoCris,fit_Metric_BEthreat_EcoCris,fit_Scalar_BEthreat_EcoCris)

##Fit statistics are all acceptable for scalar invariance


##------------------------------------------------------------------------------------------------
##The chi-square diffierence test is significant from metric to scalar invariance  
lavTestLRT(fit_Config_BEthreat_EcoCris,fit_Metric_BEthreat_EcoCris,fit_Scalar_BEthreat_EcoCris)
lavTestScore(fit_Scalar_BEthreat_EcoCris)
parTable(fit_Scalar_BEthreat_EcoCris)

##Define model manually to free the intercept of imueclt in group 3
model_BEthreat_EcoCris_free1Intercept<-'
PerceivedEthnicThreat=~c(L1,L1,L1,L1)*EcoThreat+c(L2,L2,L2,L2)*CulThreat+c(L3,L3,L3,L3)*GenThreat
EcoThreat~c(I1,I1,I1,I1)*1
CulThreat~c(I2,I2,I2_Round5,I2)*1
GenThreat~c(I3,I3,I3,I3)*1
PerceivedEthnicThreat~c(0,NA,NA,NA)*0
'

fit_BEthreat_EcoCris_free1Intercept<-cfa(model = model_BEthreat_EcoCris_free1Intercept,
                                         data = BE_Round3To6_cfa,
                                         group = "CountryRound")
summary(fit_BEthreat_EcoCris_free1Intercept, standardized=TRUE)

##check the chi-square difference test again
lavTestLRT(fit_Config_BEthreat_EcoCris,fit_Metric_BEthreat_EcoCris,fit_BEthreat_EcoCris_free1Intercept)

##After manually defining the table, the parTable label DOES NOT correspond to lavTestScore table anymore!!##
lavTestScore(fit_BEthreat_EcoCris_free1Intercept)
parTable(fit_BEthreat_EcoCris_free1Intercept)
