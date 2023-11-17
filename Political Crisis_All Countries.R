##List the files that we need to read in for political crisis:
list.files('./ESS Data/Political Crisis')

##Read all the countries in one by one and select the 5 variables we need:

#BE-Belgium
BE_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_BE_ESS6-8.csv')
BE_Round6to8_selected<-BE_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#CZ-Czech Republic
CZ_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_CZ_ESS6-8.csv')
CZ_Round6to8_selected<-CZ_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#EE-Estonia
EE_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_EE_ESS6-8.csv')
EE_Round6to8_selected<-EE_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#FI-Finland
FI_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_FI_ESS6-8.csv')
FI_Round6to8_selected<-FI_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#FR-France
FR_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_FR_ESS6-8.csv')
FR_Round6to8_selected<-FR_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#DE-Germany
DE_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_DE_ESS6-8.csv')
DE_Round6to8_selected<-DE_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#HU-Hungary
HU_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_HU_ESS6-8.csv')
HU_Round6to8_selected<-HU_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#IE-Ireland
IE_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_IE_ESS6-8.csv')
IE_Round6to8_selected<-IE_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#LT-Lithuania
LT_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_LT_ESS6-8.csv')
LT_Round6to8_selected<-LT_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#NL-Netherlands
NL_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_NL_ESS6-8.csv')
NL_Round6to8_selected<-NL_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#NO-Norway
NO_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_NO_ESS6-8.csv')
NO_Round6to8_selected<-NO_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#PL-Poland
PL_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_PL_ESS6-8.csv')
PL_Round6to8_selected<-PL_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#PT-Portugal
PT_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_PT_ESS6-8.csv')
PT_Round6to8_selected<-PT_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#SI-Slovenia
SI_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_SI_ESS6-8.csv')
SI_Round6to8_selected<-SI_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#ES-Spain
ES_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_ES_ESS6-8.csv')
ES_Round6to8_selected<-ES_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#SE-Sweden
SE_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_SE_ESS6-8.csv')
SE_Round6to8_selected<-SE_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#CH-Switzerland
CH_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_CH_ESS6-8.csv')
CH_Round6to8_selected<-CH_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#GB-Great Britain
GB_Round6to8<-read.csv('./ESS Data/Political Crisis/PoliticalCrisis_GB_ESS6-8.csv')
GB_Round6to8_selected<-GB_Round6to8 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

##----------------------------------------------------------------------------------------
##Bind all the countries together
AllCountry_Round6to8<-rbind(BE_Round6to8_selected, CZ_Round6to8_selected,
                            EE_Round6to8_selected, FI_Round6to8_selected,
                            FR_Round6to8_selected, DE_Round6to8_selected,
                            HU_Round6to8_selected, IE_Round6to8_selected,
                            LT_Round6to8_selected, NL_Round6to8_selected,
                            NO_Round6to8_selected, PL_Round6to8_selected,
                            PT_Round6to8_selected, SI_Round6to8_selected,
                            ES_Round6to8_selected, SE_Round6to8_selected,
                            CH_Round6to8_selected, GB_Round6to8_selected)

##----------------------------------------------------------------------------------------
##Treating Missing Values
#Identify 77,88,99 as Missing Value:
table(AllCountry_Round6to8$imbgeco)
table(AllCountry_Round6to8$imueclt)
table(AllCountry_Round6to8$imwbcnt)

#Replace 77,88,99 as NA with the below functions:
defineNA_77<-function(data){
        output<-data
        for (i in seq_along(names(data))) {
                output[,i]<-as.numeric(sub(77,NA,data[,i]))    
        }
        return(output)
}

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

AllCountry_Round6to8[,3:5]<-defineNA_77(AllCountry_Round6to8[,3:5])
AllCountry_Round6to8[,3:5]<-defineNA_88(AllCountry_Round6to8[,3:5])
AllCountry_Round6to8[,3:5]<-defineNA_99(AllCountry_Round6to8[,3:5])

#Double check the missing values are correctly treated:
sum(is.na(AllCountry_Round6to8$imbgeco))
sum(is.na(AllCountry_Round6to8$imueclt))
sum(is.na(AllCountry_Round6to8$imwbcnt))

##---------------------------------------------------------------------------------------
#Reverse the code for the 3 threat items:
ReverseCoding_scale10<-function(data,VarName){
        output<-as.numeric()
        for(i in seq_along(data[[VarName]])){
                ifelse(is.na(data[i,VarName]), output[i]<-NA, 
                       output[i]<-(-1)*data[i,VarName]+10)
        }
        return(output)
}

AllCountry_Round6to8$EcoThreat<-ReverseCoding_scale10(data = AllCountry_Round6to8, VarName="imbgeco")
AllCountry_Round6to8$CulThreat<-ReverseCoding_scale10(data = AllCountry_Round6to8, VarName = "imueclt")
AllCountry_Round6to8$GenThreat<-ReverseCoding_scale10(data = AllCountry_Round6to8, VarName = "imwbcnt")

##-----------------------------------------------------------------------------------------
##Creating the grouping factor for MGCFA
#First, we paste the round and country together
AllCountry_Round6to8$CountryRound<-paste(AllCountry_Round6to8$cntry, AllCountry_Round6to8$essround,
                                         sep = "-")

#Then, we need to turn the CountryRound into factor and define the level
AllCountry_Round6to8$CountryRound<-factor(AllCountry_Round6to8$CountryRound,
                                          levels = c("BE-6", "BE-7", "BE-8",
                                                     "CZ-6", "CZ-7", "CZ-8",
                                                     "EE-6", "EE-7", "EE-8",
                                                     "FI-6", "FI-7", "FI-8",
                                                     "FR-6", "FR-7", "FR-8",
                                                     "DE-6", "DE-7", "DE-8",
                                                     "HU-6", "HU-7", "HU-8",
                                                     "IE-6", "IE-7", "IE-8",
                                                     "LT-6", "LT-7", "LT-8",
                                                     "NL-6", "NL-7", "NL-8",
                                                     "NO-6", "NO-7", "NO-8",
                                                     "PL-6", "PL-7", "PL-8",
                                                     "PT-6", "PT-7", "PT-8",
                                                     "SI-6", "SI-7", "SI-8",
                                                     "ES-6", "ES-7", "ES-8",
                                                     "SE-6", "SE-7", "SE-8",
                                                     "CH-6", "CH-7", "CH-8",
                                                     "GB-6", "GB-7", "GB-8"),
                                          labels = c("BE-6", "BE-7", "BE-8",
                                                     "CZ-6", "CZ-7", "CZ-8",
                                                     "EE-6", "EE-7", "EE-8",
                                                     "FI-6", "FI-7", "FI-8",
                                                     "FR-6", "FR-7", "FR-8",
                                                     "DE-6", "DE-7", "DE-8",
                                                     "HU-6", "HU-7", "HU-8",
                                                     "IE-6", "IE-7", "IE-8",
                                                     "LT-6", "LT-7", "LT-8",
                                                     "NL-6", "NL-7", "NL-8",
                                                     "NO-6", "NO-7", "NO-8",
                                                     "PL-6", "PL-7", "PL-8",
                                                     "PT-6", "PT-7", "PT-8",
                                                     "SI-6", "SI-7", "SI-8",
                                                     "ES-6", "ES-7", "ES-8",
                                                     "SE-6", "SE-7", "SE-8",
                                                     "CH-6", "CH-7", "CH-8",
                                                     "GB-6", "GB-7", "GB-8"))

##--------------------------------------------------------------------------------------
##Narrow down to the variables we need for the MGCFA:
AllCountry_Round6to8_mgcfa<-AllCountry_Round6to8 %>%
        select(EcoThreat, CulThreat, GenThreat, CountryRound)
options(max.print = 99999)

##--------------------------------------------------------------------------------------
##Define the model for configural invariance
model_Config_PoliCrisis<-'
Threat=~EcoThreat+CulThreat+GenThreat
'

fit_Config_PoliCrisis<-cfa(model = model_Config_PoliCrisis,
                           data = AllCountry_Round6to8_mgcfa,
                           group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Config_PoliCrisis.txt")
summary(fit_Config_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()
##df=0 --> perfect fit

##--------------------------------------------------------------------------------------
##Define the model manually for metric invariance across time points within each country
model_MetricWithinCountry_PoliCrisis<-'
Threat=~c(L101,L101,L101, ##BE
        L102,L102,L102,  ##CZ
        L103,L103,L103,  ##EE
        L104,L104,L104,  ##FI
        L105,L105,L105,  ##FR
        L106,L106,L106,  ##DE
        L107,L107,L107,  ##HU
        L108,L108,L108,  ##IE
        L109,L109,L109,  ##LT
        L110,L110,L110,  ##NL
        L111,L111,L111,  ##NO
        L112,L112,L112,  ##PL
        L113,L113,L113,  ##PT
        L114,L114,L114,  ##SI
        L115,L115,L115,  ##ES
        L116,L116,L116,  ##SE
        L117,L117,L117,  ##CH
        L118,L118,L118  ##GB
        )*EcoThreat+
        c(L201,L201,L201, ##BE
        L202,L202,L202,  ##CZ
        L203,L203,L203,  ##EE
        L204,L204,L204,  ##FI
        L205,L205,L205,  ##FR
        L206,L206,L206,  ##DE
        L207,L207,L207,  ##HU
        L208,L208,L208,  ##IE
        L209,L209,L209,  ##LT
        L210,L210,L210,  ##NL
        L211,L211,L211,  ##NO
        L212,L212,L212,  ##PL
        L213,L213,L213,  ##PT
        L214,L214,L214,  ##SI
        L215,L215,L215,  ##ES
        L216,L216,L216,  ##SE
        L217,L217,L217,  ##CH
        L218,L218,L218  ##GB
        )*CulThreat+
        c(L301,L301,L301, ##BE
        L302,L302,L302,  ##CZ
        L303,L303,L303,  ##EE
        L304,L304,L304,  ##FI
        L305,L305,L305,  ##FR
        L306,L306,L306,  ##DE
        L307,L307,L307,  ##HU
        L308,L308,L308,  ##IE
        L309,L309,L309,  ##LT
        L310,L310,L310,  ##NL
        L311,L311,L311,  ##NO
        L312,L312,L312,  ##PL
        L313,L313,L313,  ##PT
        L314,L314,L314,  ##SI
        L315,L315,L315,  ##ES
        L316,L316,L316,  ##SE
        L317,L317,L317,  ##CH
        L318,L318,L318  ##GB
        )*GenThreat
'

#MGCFA for metric invariance within country across time points
fit_MetricWithinCountry_PoliCrisis<-cfa(model=model_MetricWithinCountry_PoliCrisis,
                                        data = AllCountry_Round6to8_mgcfa,
                                        group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/MetricWithinCountry_PoliCrisis.txt")
summary(fit_MetricWithinCountry_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

##Local fit with chi-square difference and EPC
sink("./Political Crisis_All Countries Sink Results/MetricWithinCountry_PoliCrisis_LocalFit.txt")
lavTestScore(fit_MetricWithinCountry_PoliCrisis, epc = TRUE)
sink()

##------------------------------------------------------------------------------------------------
##M1:Full metric invariance across time points and across country 
##Define the model manually for metric invariance across time points and across country
model_FullMetric_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2,L2,L2,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

##MGCFA for full metric invariance
Fit_FullMetric_PoliCrisis<-cfa(model = model_FullMetric_PoliCrisis,
                               data = AllCountry_Round6to8_mgcfa,
                               group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/FullMetric_PoliCrisis.txt")
summary(Fit_FullMetric_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./Political Crisis_All Countries Sink Results/FullMetric_PoliCrisis_LocalFit.txt")
lavTestScore(Fit_FullMetric_PoliCrisis,epc = TRUE)
sink()

##----------------------------------------------------------------------------------
##M2: Full metric invariance + CulThreat Loading FI-8 free 
model_MetricCulThreatFI8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2,L2,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

fit_MetricCulThreatFI8_PoliCrisis<-cfa(model = model_MetricCulThreatFI8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatFI8.txt")
summary(fit_MetricCulThreatFI8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

##New local fit MI
sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatFI8_LocalFit.txt")
lavTestScore(fit_MetricCulThreatFI8_PoliCrisis, epc = TRUE)
sink()

##------------------------------------------------------------------------------------------------
##M3: Full metric invariance + CulThreat Loading FI-8 free + CulThreat Loading HU-6 free
model_MetricCulThreatHU6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2,L2,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

fit_MetricCulThreatHU6_PoliCrisis<-cfa(model = model_MetricCulThreatHU6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatHU6.txt")
summary(fit_MetricCulThreatHU6_PoliCrisis,fit.measures=TRUE, standardized=TRUE)
sink()

##M3 local fit MI
sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatHU6_LocalFit.txt")
lavTestScore(fit_MetricCulThreatHU6_PoliCrisis,epc = TRUE)
sink()

##------------------------------------------------------------------------------------------------
##M4: Full metric invariance + CulThreat Loading FI-8 free + CulThreat Loading HU-6 free
##+ CulThreat Loading FI-6 free
model_MetricCulThreatFI6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

fit__MetricCulThreatFI6_PoliCrisis<-cfa(model = model_MetricCulThreatFI6_PoliCrisis,
                                        data = AllCountry_Round6to8_mgcfa,
                                        group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatFI6.txt")
summary(fit__MetricCulThreatFI6_PoliCrisis,fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatFI6_LocalFit.txt")
lavTestScore(fit__MetricCulThreatFI6_PoliCrisis,epc = TRUE)
sink()

##------------------------------------------------------------------------------------------------
##M5: Full metric invariance + CulThreat Loading FI-8 free + CulThreat Loading HU-6 free
##+ CulThreat Loading FI-6 free + GenThreat Loading PL-8 free
model_MetricGenThreatPL8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

fit__MetricGenThreatPL8_PoliCrisis<-cfa(model = model_MetricGenThreatPL8_PoliCrisis,
                                        data = AllCountry_Round6to8_mgcfa,
                                        group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_GenThreatPL8.txt")
summary(fit__MetricGenThreatPL8_PoliCrisis,fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_GenThreatPL8_LocalFit.txt")
lavTestScore(fit__MetricGenThreatPL8_PoliCrisis,epc = TRUE)
sink()

##------------------------------------------------------------------------------------------------
##M6: Full metric invariance + CulThreat Loading FI-8 free + CulThreat Loading HU-6 free
##+ CulThreat Loading FI-6 free + GenThreat Loading PL-8 free + CulThreat Loading FI-7
model_MetricCulThreatFI7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

fit__MetricCulThreatFI7_PoliCrisis<-cfa(model = model_MetricCulThreatFI7_PoliCrisis,
                                        data = AllCountry_Round6to8_mgcfa,
                                        group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatFI7.txt")
summary(fit__MetricCulThreatFI7_PoliCrisis,fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_CulThreatFI7_LocalFit.txt")
lavTestScore(fit__MetricCulThreatFI7_PoliCrisis,epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M7: Full metric invariance + CulThreat Loading FI-8 free + CulThreat Loading HU-6 free
##+ CulThreat Loading FI-6 free + GenThreat Loading PL-8 free + CulThreat Loading FI-7
##+ GenThreat Loading SE-6 free
model_MetricGenThreatSE6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
'

fit_MetricGenThreatSE6_PoliCrisis<-cfa(model = model_MetricGenThreatSE6_PoliCrisis,
                                        data = AllCountry_Round6to8_mgcfa,
                                        group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_GenThreatSE6.txt")
summary(fit_MetricGenThreatSE6_PoliCrisis,fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/Metric_PoliCrisis_GenThreatSE6_LocalFit.txt")
lavTestScore(fit_MetricGenThreatSE6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M8: Partial Scalar Invariance
model_PartialScalar_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2,  #CZ
        I2,I2,I2,  #EE
        I2,I2,I2,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_PartialScalar_PoliCrisis<-cfa(model = model_PartialScalar_PoliCrisis,
                                  data = AllCountry_Round6to8_mgcfa,
                                  group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis.txt")
summary(fit_PartialScalar_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_LocalFit.txt")
lavTestScore(fit_PartialScalar_PoliCrisis,epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M9: Partial Scalar Invariance + CulThreat Intercept FI6 free
model_ScalarCulThreatFI6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2,I2,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatFI6_PoliCrisis<-cfa(model = model_ScalarCulThreatFI6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatFI6.txt")
summary(fit_ScalarCulThreatFI6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatFI6_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatFI6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M10: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
model_ScalarCulThreatFI7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatFI7_PoliCrisis<-cfa(model = model_ScalarCulThreatFI7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatFI7.txt")
summary(fit_ScalarCulThreatFI7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatFI7_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatFI7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M11: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free
model_ScalarCulThreatFI8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatFI8_PoliCrisis<-cfa(model = model_ScalarCulThreatFI8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatFI8.txt")
summary(fit_ScalarCulThreatFI8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatFI8_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatFI8_PoliCrisis,epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M12: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7
model_ScalarEcoThreatSE7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatSE7_PoliCrisis<-cfa(model = model_ScalarEcoThreatSE7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatSE7.txt")
summary(fit_ScalarEcoThreatSE7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatSE7_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatSE7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M13: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
model_ScalarCulThreatCZ8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatCZ8_PoliCrisis<-cfa(model = model_ScalarCulThreatCZ8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatCZ8.txt")
summary(fit_ScalarCulThreatCZ8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatCZ8_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatCZ8_PoliCrisis,epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M14: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free
model_ScalarEcoThreatDE8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1,I1,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatDE8_PoliCrisis<-cfa(model = model_ScalarEcoThreatDE8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatDE8.txt")
summary(fit_ScalarEcoThreatDE8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatDE8_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatDE8_PoliCrisis,epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M15: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free
model_ScalarEcoThreatCH7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatCH7_PoliCrisis<-cfa(model = model_ScalarEcoThreatCH7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatCH7.txt")
summary(fit_ScalarEcoThreatCH7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatCH7_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatCH7_PoliCrisis, epc=TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M16: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
model_ScalarEcoThreatCH6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatCH6_PoliCrisis<-cfa(model = model_ScalarEcoThreatCH6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatCH6.txt")
summary(fit_ScalarEcoThreatCH6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatCH6_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatCH6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M17: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free
model_ScalarCulThreatIE8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2,I2,I2,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatIE8_PoliCrisis<-cfa(model=model_ScalarCulThreatIE8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatIE8.txt")
summary(fit_ScalarCulThreatIE8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatIE8_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatIE8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M18: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free
model_ScalarCulThreatLT8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2,I2,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatLT8_PoliCrisis<-cfa(model = model_ScalarCulThreatLT8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatLT8.txt")
summary(fit_ScalarCulThreatLT8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatLT8_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatLT8_PoliCrisis, epc=TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M19: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
model_ScalarCulThreatLT7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatLT7_PoliCrisis<-cfa(model = model_ScalarCulThreatLT7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatLT7.txt")
summary(fit_ScalarCulThreatLT7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatLT7_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatLT7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M20: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free
model_ScalarGenThreatIE6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatIE6_PoliCrisis<-cfa(model = model_ScalarGenThreatIE6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatIE6.txt")
summary(fit_ScalarGenThreatIE6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatIE6_LoccalFit.txt")
lavTestScore(fit_ScalarGenThreatIE6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M21: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free
model_ScalarCulThreatLT6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatLT6_PoliCrisis<-cfa(model = model_ScalarCulThreatLT6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatLT6.txt")
summary(fit_ScalarCulThreatLT6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatLT6_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatLT6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M22: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
model_ScalarEcoThreatCH8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatCH8_PoliCrisis<-cfa(model = model_ScalarEcoThreatCH8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatCH8.txt")
summary(fit_ScalarEcoThreatCH8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatCH8_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatCH8_PoliCrisis, epc=TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M23: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free
model_ScalarCulThreatGB8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatGB8_PoliCrisis<-cfa(model = model_ScalarCulThreatGB8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatGB8.txt")
summary(fit_ScalarCulThreatGB8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatGB8_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatGB8_PoliCrisis, epc=TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M24: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free
model_ScalarCulThreatIE7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatIE7_PoliCrisis<-cfa(model = model_ScalarCulThreatIE7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatIE7.txt")
summary(fit_ScalarCulThreatIE7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatIE7_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatIE7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M25: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6
model_ScalarGenThreatPT6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatPT6_PoliCrisis<-cfa(model = model_ScalarGenThreatPT6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatPT6.txt")
summary(fit_ScalarGenThreatPT6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatPT6_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatPT6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M26: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free
model_ScalarCulThreatGB7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatGB7_PoliCrisis<-cfa(model = model_ScalarCulThreatGB7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatGB7.txt")
summary(fit_ScalarCulThreatGB7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatGB7_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatGB7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M27: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free
model_ScalarCulThreatCZ7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatCZ7_PoliCrisis<-cfa(model = model_ScalarCulThreatCZ7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatCZ7.txt")
summary(fit_ScalarCulThreatCZ7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatCZ7_LocalFIt.txt")
lavTestScore(fit_ScalarCulThreatCZ7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M28: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
model_ScalarCulThreatCZ6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatCZ6_PoliCrisis<-cfa(model = model_ScalarCulThreatCZ6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatCZ6.txt")
summary(fit_ScalarCulThreatCZ6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatCZ6_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatCZ6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M29: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free
model_ScalarEcoThreatDE7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatDE7_PoliCrisis<-cfa(model = model_ScalarEcoThreatDE7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatDE7.txt")
summary(fit_ScalarEcoThreatDE7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatDE7_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatDE7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M30: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free 
model_ScalarEcoThreatDE6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatDE6_PoliCrisis<-cfa(model = model_ScalarEcoThreatDE6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatDE6.txt")
summary(fit_ScalarEcoThreatDE6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatDE6_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatDE6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M31: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
model_ScalarEcoThreatNO6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'
fit_ScalarEcoThreatNO6_PoliCrisis<-cfa(model = model_ScalarEcoThreatNO6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatNO6.txt")
summary(fit_ScalarEcoThreatNO6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatNO6_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatNO6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M32: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free
model_ScalarCulThreatNO8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatNO8_PoliCrisis<-cfa(model = model_ScalarCulThreatNO8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatNO8.txt")
summary(fit_ScalarCulThreatNO8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatNO8_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatNO8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M33: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free
model_ScalarCulThreatNO7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatNO7_PoliCrisis<-cfa(model = model_ScalarCulThreatNO7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatNO7.txt")
summary(fit_ScalarCulThreatNO7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatNO7_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatNO7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M34: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
model_ScalarEcoThreatLT8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatLT8_PoliCrisis<-cfa(model = model_ScalarEcoThreatLT8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatLT8.txt")
summary(fit_ScalarEcoThreatLT8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatLT8_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatLT8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M35: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free
model_ScalarGenThreatHU8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatHU8_PoliCrisis<-cfa(model = model_ScalarGenThreatHU8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatHU8.txt")
summary(fit_ScalarGenThreatHU8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatHU8_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatHU8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M36: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8
model_ScalarGenThreatPL8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatPL8_PoliCrisis<-cfa(model = model_ScalarGenThreatPL8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatPL8.txt")
summary(fit_ScalarGenThreatPL8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatPL8_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatPL8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M37: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
model_ScalarGenThreatPT7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatPT7_PoliCrisis<-cfa(model = model_ScalarGenThreatPT7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatPT7.txt")
summary(fit_ScalarGenThreatPT7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatPT7_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatPT7_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M38: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
##+GenThreat Intercept GB8 free
model_ScalarGenThreatGB8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3F6,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatGB8_PoliCrisis<-cfa(model = model_ScalarGenThreatGB8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatGB8.txt")
summary(fit_ScalarGenThreatGB8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_GenThreatGB8_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatGB8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M39: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
##+GenThreat Intercept GB8 free + EcoThreat Intercept SE6 free
model_ScalarEcoThreatSE6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1F10,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3F6,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'
fit_ScalarEcoThreatSE6_PoliCrisis<-cfa(model = model_ScalarEcoThreatSE6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatSE6.txt")
summary(fit_ScalarEcoThreatSE6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatSE6_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatSE6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M40: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
##+GenThreat Intercept GB8 free + EcoThreat Intercept SE6 free + EcoThreat Intercept PT8 free
model_ScalarEcoThreatPT8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1F11,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1F10,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3F6,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatPT8_PoliCrisis<-cfa(model = model_ScalarEcoThreatPT8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatPT8.txt")
summary(fit_ScalarEcoThreatPT8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatPT8_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatPT8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M41: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
##+GenThreat Intercept GB8 free + EcoThreat Intercept SE6 free + EcoThreat Intercept PT8 free
##+EcoThreat Intercept LT6 free
model_ScalarEcoThreatLT6_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1F12,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1F11,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1F10,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3F6,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatLT6_PoliCrisis<-cfa(model = model_ScalarEcoThreatLT6_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")
sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatLT6.txt")
summary(fit_ScalarEcoThreatLT6_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatLT6_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatLT6_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M42: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
##+GenThreat Intercept GB8 free + EcoThreat Intercept SE6 free + EcoThreat Intercept PT8 free
##+EcoThreat Intercept LT6 free + EcoThreat Intercept EE8 free
model_ScalarEcoThreatEE8_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1F13,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1F12,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1F11,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1F10,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3F6,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatEE8_PoliCrisis<-cfa(model = model_ScalarEcoThreatEE8_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatEE8.txt")
summary(fit_ScalarEcoThreatEE8_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_EcoThreatEE8_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatEE8_PoliCrisis, epc = TRUE)
sink()

##--------------------------------------------------------------------------------------------------
##M43: Partial Scalar Invariance + CulThreat Intercept FI6 free + CulThreat Intercept FI7 free
##+CulThreat Intercept FI8 Free + EcoThreat Intercept SE7 free + CulThreat Intercept CZ8 free
##+EcoThreat Intercept DE8 Free + EcoThreat Intercept CH7 free + EcoThreat Intercept CH6 free
##+CulThreat Intercept IE8 free + CulThreat Intercept LT8 free + CulThreat Intercept LT7 free
##+GenThreat intercept IE6 free + CulThreat Intercept LT6 free + EcoThreat Intercept CH8 free
##+CulThreat Intercept GB8 free + CulThreat Intercept IE7 free + GenThreat Intercept PT6 free
##+CulThreat Intercept GB7 free + CulThreat Intercept CZ7 free + CulThreat Intercept CZ6 free
##+EcoThreat Intercept DE7 free + EcoThreat Intercept DE6 free + EcoThreat Intercept NO6 free
##+CulThreat Intercept NO8 free + CulThreat Intercept NO7 free + EcoThreat Intercept LT8 free
##+GenThreat Intercept HU8 free + GenThreat Intercept PL8 free + GenThreat Intercept PT7 free
##+GenThreat Intercept GB8 free + EcoThreat Intercept SE6 free + EcoThreat Intercept PT8 free
##+EcoThreat Intercept LT6 free + EcoThreat Intercept EE8 free + CulThreat Intercept BE7 free
model_ScalarCulThreatBE7_PoliCrisis<-'
Threat=~c(L1,L1,L1, ##BE
        L1,L1,L1,  ##CZ
        L1,L1,L1,  ##EE
        L1,L1,L1,  ##FI
        L1,L1,L1,  ##FR
        L1,L1,L1,  ##DE
        L1,L1,L1,  ##HU
        L1,L1,L1,  ##IE
        L1,L1,L1,  ##LT
        L1,L1,L1,  ##NL
        L1,L1,L1,  ##NO
        L1,L1,L1,  ##PL
        L1,L1,L1,  ##PT
        L1,L1,L1,  ##SI
        L1,L1,L1,  ##ES
        L1,L1,L1,  ##SE
        L1,L1,L1,  ##CH
        L1,L1,L1  ##GB
        )*EcoThreat+
        c(L2,L2,L2, ##BE
        L2,L2,L2,  ##CZ
        L2,L2,L2,  ##EE
        L2FFF,L2FFFF,L2F,  ##FI
        L2,L2,L2,  ##FR
        L2,L2,L2,  ##DE
        L2FF,L2,L2,  ##HU
        L2,L2,L2,  ##IE
        L2,L2,L2,  ##LT
        L2,L2,L2,  ##NL
        L2,L2,L2,  ##NO
        L2,L2,L2,  ##PL
        L2,L2,L2,  ##PT
        L2,L2,L2,  ##SI
        L2,L2,L2,  ##ES
        L2,L2,L2,  ##SE
        L2,L2,L2,  ##CH
        L2,L2,L2  ##GB
        )*CulThreat+
        c(L3,L3,L3, ##BE
        L3,L3,L3,  ##CZ
        L3,L3,L3,  ##EE
        L3,L3,L3,  ##FI
        L3,L3,L3,  ##FR
        L3,L3,L3,  ##DE
        L3,L3,L3,  ##HU
        L3,L3,L3,  ##IE
        L3,L3,L3,  ##LT
        L3,L3,L3,  ##NL
        L3,L3,L3,  ##NO
        L3,L3,L3F,  ##PL
        L3,L3,L3,  ##PT
        L3,L3,L3,  ##SI
        L3,L3,L3,  ##ES
        L3FF,L3,L3,  ##SE
        L3,L3,L3,  ##CH
        L3,L3,L3  ##GB
        )*GenThreat
EcoThreat~c(I1,I1,I1, #BE
        I1,I1,I1,  #CZ
        I1,I1,I1F13,  #EE
        I1,I1,I1,  #FI
        I1,I1,I1,  #FR
        I1F7,I1F6,I1F2,  #DE
        I1,I1,I1,  #HU
        I1,I1,I1,  #IE
        I1F12,I1,I1F9,  #LT
        I1,I1,I1,  #NL
        I1F8,I1,I1,  #NO
        I1,I1,I1,  #PL
        I1,I1,I1F11,  #PT
        I1,I1,I1,  #SI
        I1,I1,I1,  #ES
        I1F10,I1F1,I1,  #SE
        I1F4,I1F3,I1F5,  #CH
        I1,I1,I1,  #GB
        )*1
CulThreat~c(I2,I2F16,I2, #BE
        I2F13,I2F12,I2F4,  #CZ
        I2,I2,I2,  #EE
        I2F1,I2F2,I2F3,  #FI
        I2,I2,I2,  #FR
        I2,I2,I2,  #DE
        I2,I2,I2,  #HU
        I2,I2F10,I2F5,  #IE
        I2F8,I2F7,I2F6,  #LT
        I2,I2,I2,  #NL
        I2,I2F15,I2F14,  #NO
        I2,I2,I2,  #PL
        I2,I2,I2,  #PT
        I2,I2,I2,  #SI
        I2,I2,I2,  #ES
        I2,I2,I2,  #SE
        I2,I2,I2,  #CH
        I2,I2F11,I2F9,  #GB
        )*1
GenThreat~c(I3,I3,I3, #BE
        I3,I3,I3,  #CZ
        I3,I3,I3,  #EE
        I3,I3,I3,  #FI
        I3,I3,I3,  #FR
        I3,I3,I3,  #DE
        I3,I3,I3F3,  #HU
        I3F1,I3,I3,  #IE
        I3,I3,I3,  #LT
        I3,I3,I3,  #NL
        I3,I3,I3,  #NO
        I3,I3,I3F4,  #PL
        I3F2,I3F5,I3,  #PT
        I3,I3,I3,  #SI
        I3,I3,I3,  #ES
        I3,I3,I3,  #SE
        I3,I3,I3,  #CH
        I3,I3,I3F6,  #GB
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatBE7_PoliCrisis<-cfa(model = model_ScalarCulThreatBE7_PoliCrisis,
                                       data = AllCountry_Round6to8_mgcfa,
                                       group = "CountryRound")

sink("./Political Crisis_All Countries Sink Results/PartialScalar_PoliCrisis_CulThreatBE7.txt")
summary(fit_ScalarCulThreatBE7_PoliCrisis, fit.measures=TRUE, standardized=TRUE)
sink()