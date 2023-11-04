##Read the data in:
RS_Round9To10<-read.csv("./ESS Data/COVID Crisis/CovidCrisis_RS_ESS9-10.csv")

##Select the five variables needed for MGCFA:
RS_Round9To10_cfa<-RS_Round9To10 %>%
        select(essround,cntry,imbgeco,imueclt,imwbcnt)
head(RS_Round9To10_cfa,n=5)
tail(RS_Round9To10_cfa,n=5)

##Treating missing values
##Identify 77, 88, 99 as missing values for all 3 variables:
table(RS_Round9To10_cfa$imbgeco)
table(RS_Round9To10_cfa$imueclt)
table(RS_Round9To10_cfa$imwbcnt)

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



RS_Round9To10_cfa[,3:5]<-defineNA_88(RS_Round9To10_cfa[,3:5])
RS_Round9To10_cfa[,3:5]<-defineNA_77(RS_Round9To10_cfa[,3:5])
RS_Round9To10_cfa[,3:5]<-defineNA_99(RS_Round9To10_cfa[,3:5])

##Double check the NA is correctly treated:
sum(is.na(RS_Round9To10_cfa$imbgeco))
sum(is.na(RS_Round9To10_cfa$imueclt))
sum(is.na(RS_Round9To10_cfa$imwbcnt))

##Reverse code the three threat items so that the higher values indicating stronger threat
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

RS_Round9To10_cfa$EcoThreat<-ReverseCoding_scale10(data = RS_Round9To10_cfa,VarName = "imbgeco")
RS_Round9To10_cfa$CulThreat<-ReverseCoding_scale10(data = RS_Round9To10_cfa,VarName = "imueclt")
RS_Round9To10_cfa$GenThreat<-ReverseCoding_scale10(data = RS_Round9To10_cfa,VarName = "imwbcnt")

##To make the grouping variable by pasting round and country together
RS_Round9To10_cfa$CountryRound<-paste(RS_Round9To10_cfa$cntry,RS_Round9To10_cfa$essround,
                                      sep = "-")
RS_Round9To10_cfa$CountryRound<-factor(RS_Round9To10_cfa$CountryRound,
                                       levels = c("RS-9","RS-10"),
                                       labels = c("RS-9","RS-10"))

##Narrow the dataset down to the variables we need:
RS_Round9To10_cfa<-RS_Round9To10_cfa %>%
        select(EcoThreat,CulThreat,GenThreat,CountryRound)

##Define the model:
model_RSthreat_CovidCris<-'
PerceivedEthnicThreat=~EcoThreat+CulThreat+GenThreat
'

##Configural invariance:
fit_Config_RSthreat_CovidCris<-cfa(model = model_RSthreat_CovidCris,
                                   data = RS_Round9To10_cfa,
                                   group = "CountryRound")

##Metric Invariance: 
fit_Metric_RSthreat_CovidCris<-cfa(model = model_RSthreat_CovidCris,
                                   data = RS_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings"))

##Scalar Invariance:
fit_Scalar_RSthreat_CovidCris<-cfa(model = model_RSthreat_CovidCris,
                                   data = RS_Round9To10_cfa,
                                   group = "CountryRound",
                                   group.equal=c("loadings","intercepts"))
summary(fit_Scalar_RSthreat_CovidCris, fit.measures=TRUE, standardized=TRUE)

##fit statistics compared across configural, metric, and scalar invarainces
#fitStatCompare function can be found on Github
fitStatCompare(fit_Config_RSthreat_CovidCris,fit_Metric_RSthreat_CovidCris,fit_Scalar_RSthreat_CovidCris)

#local fit:
lavTestLRT(fit_Config_RSthreat_CovidCris,fit_Metric_RSthreat_CovidCris,fit_Scalar_RSthreat_CovidCris)
