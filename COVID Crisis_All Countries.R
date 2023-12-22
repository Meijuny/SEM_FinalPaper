##List the files that we need to read in for COVID crisis:
list.files('./ESS Data/COVID Crisis')

##Read all the countries in one by one and select the 5 variables we need:

#AT-Austria
AT_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_AT_ESS9-10.csv')
AT_Round9to10_selected<-AT_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#BE-Belgium
BE_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_BE_ESS9-10.csv')
BE_Round9to10_selected<-BE_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#BG-Bulgaria
BG_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_BG_ESS9-10.csv')
BG_Round9to10_selected<-BG_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#CH-Switzerland
CH_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_CH_ESS9-10.csv')
CH_Round9to10_selected<-CH_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#CY-Cyprus
CY_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_CY_ESS9-10.csv')
CY_Round9to10_selected<-CY_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#CZ-Czech
CZ_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_CZ_ESS9-10.csv')
CZ_Round9to10_selected<-CZ_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#DE-Germany
DE_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_DE_ESS9-10.csv')
DE_Round9to10_selected<-DE_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#EE-Estonia
EE_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_EE_ESS9-10.csv')
EE_Round9to10_selected<-EE_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#ES-Spain
ES_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_ES_ESS9-10.csv')
ES_Round9to10_selected<-ES_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#FI-Finland
FI_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_FI_ESS9-10.csv')
FI_Round9to10_selected<-FI_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#FR-France
FR_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_FR_ESS9-10.csv')
FR_Round9to10_selected<-FR_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#GB-Great Britain
GB_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_GB_ESS9-10.csv')
GB_Round9to10_selected<-GB_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#HR-Croatia
HR_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_HR_ESS9-10.csv')
HR_Round9to10_selected<-HR_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#HU-Hungary
HU_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_HU_ESS9-10.csv')
HU_Round9to10_selected<-HU_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#IE-Ireland
IE_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_IE_ESS9-10.csv')
IE_Round9to10_selected<-IE_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#IS-Iceland
IS_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_IS_ESS9-10.csv')
IS_Round9to10_selected<-IS_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#IT-Italy
IT_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_IT_ESS9-10.csv')
IT_Round9to10_selected<-IT_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#LT-Lithuania
LT_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_LT_ESS9-10.csv')
LT_Round9to10_selected<-LT_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#LV-Latvia
LV_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_LV_ESS9-10.csv')
LV_Round9to10_selected<-LV_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#ME-Montenegro
ME_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_ME_ESS9-10.csv')
ME_Round9to10_selected<-ME_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#NL-Netherlands
NL_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_NL_ESS9-10.csv')
NL_Round9to10_selected<-NL_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#NO-Norway
NO_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_NO_ESS9-10.csv')
NO_Round9to10_selected<-NO_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#PL-Poland
PL_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_PL_ESS9-10.csv')
PL_Round9to10_selected<-PL_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#PT-Portugal
PT_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_PT_ESS9-10.csv')
PT_Round9to10_selected<-PT_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#RS-Serbia
RS_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_RS_ESS9-10.csv')
RS_Round9to10_selected<-RS_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#SE-Sweden
SE_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_SE_ESS9-10.csv')
SE_Round9to10_selected<-SE_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#SI-Slovenia
SI_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_SI_ESS9-10.csv')
SI_Round9to10_selected<-SI_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

#SK-Slovakia
SK_Round9to10<-read.csv('./ESS Data/COVID Crisis/CovidCrisis_SK_ESS9-10.csv')
SK_Round9to10_selected<-SK_Round9to10 %>%
        select(essround, cntry, imbgeco, imueclt, imwbcnt)

##---------------------------------------------------------------------------------------------
##Bind all the countries together
AllCountry_Round9to10<-rbind(AT_Round9to10_selected, BE_Round9to10_selected, 
                             BG_Round9to10_selected, CH_Round9to10_selected,
                             CY_Round9to10_selected, CZ_Round9to10_selected,
                             DE_Round9to10_selected, EE_Round9to10_selected,
                             ES_Round9to10_selected, FI_Round9to10_selected,
                             FR_Round9to10_selected, GB_Round9to10_selected,
                             HR_Round9to10_selected, HU_Round9to10_selected,
                             IE_Round9to10_selected, IS_Round9to10_selected,
                             IT_Round9to10_selected, LT_Round9to10_selected,
                             LV_Round9to10_selected, ME_Round9to10_selected,
                             NL_Round9to10_selected, NO_Round9to10_selected,
                             PL_Round9to10_selected, PT_Round9to10_selected,
                             RS_Round9to10_selected, SE_Round9to10_selected,
                             SI_Round9to10_selected, SK_Round9to10_selected)

##----------------------------------------------------------------------------------------
##Treating Missing Values
#Identify 77,88,99 as Missing Value:
table(AllCountry_Round9to10$imbgeco)
table(AllCountry_Round9to10$imueclt)
table(AllCountry_Round9to10$imwbcnt)

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

AllCountry_Round9to10[,3:5]<-defineNA_77(AllCountry_Round9to10[,3:5])
AllCountry_Round9to10[,3:5]<-defineNA_88(AllCountry_Round9to10[,3:5])
AllCountry_Round9to10[,3:5]<-defineNA_99(AllCountry_Round9to10[,3:5])

#Double check the NA is correctly coded:
sum(is.na(AllCountry_Round9to10$imbgeco))
sum(is.na(AllCountry_Round9to10$imueclt))
sum(is.na(AllCountry_Round9to10$imwbcnt))

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

AllCountry_Round9to10$EcoThreat<-ReverseCoding_scale10(data = AllCountry_Round9to10, VarName="imbgeco")
AllCountry_Round9to10$CulThreat<-ReverseCoding_scale10(data = AllCountry_Round9to10, VarName="imueclt")
AllCountry_Round9to10$GenThreat<-ReverseCoding_scale10(data = AllCountry_Round9to10, VarName="imwbcnt")


##-----------------------------------------------------------------------------------------
##Creating the grouping factor for MGCFA
#First, we paste the round and country together
AllCountry_Round9to10$CountryRound<-paste(AllCountry_Round9to10$cntry, AllCountry_Round9to10$essround,
                                         sep = "-")

#Then, we need to turn the CountryRound into factor and define the level
AllCountry_Round9to10$CountryRound<-factor(AllCountry_Round9to10$CountryRound,
                                           levels = c("AT-9", "AT-10",
                                                      "BE-9", "BE-10",
                                                      "BG-9", "BG-10",
                                                      "HR-9", "HR-10",
                                                      "CY-9", "CY-10",
                                                      "CZ-9", "CZ-10",
                                                      "EE-9", "EE-10",
                                                      "FI-9", "FI-10",
                                                      "FR-9", "FR-10",
                                                      "DE-9", "DE-10",
                                                      "HU-9", "HU-10",
                                                      "IS-9", "IS-10",
                                                      "IE-9", "IE-10",
                                                      "IT-9", "IT-10",
                                                      "LV-9", "LV-10",
                                                      "LT-9", "LT-10",
                                                      "ME-9", "ME-10",
                                                      "NL-9", "NL-10",
                                                      "NO-9", "NO-10",
                                                      "PL-9", "PL-10",
                                                      "PT-9", "PT-10",
                                                      "RS-9", "RS-10",
                                                      "SK-9", "SK-10",
                                                      "SI-9", "SI-10",
                                                      "ES-9", "ES-10",
                                                      "SE-9", "SE-10",
                                                      "CH-9", "CH-10",
                                                      "GB-9", "GB-10"),
                                           labels = c("AT-9", "AT-10",
                                                      "BE-9", "BE-10",
                                                      "BG-9", "BG-10",
                                                      "HR-9", "HR-10",
                                                      "CY-9", "CY-10",
                                                      "CZ-9", "CZ-10",
                                                      "EE-9", "EE-10",
                                                      "FI-9", "FI-10",
                                                      "FR-9", "FR-10",
                                                      "DE-9", "DE-10",
                                                      "HU-9", "HU-10",
                                                      "IS-9", "IS-10",
                                                      "IE-9", "IE-10",
                                                      "IT-9", "IT-10",
                                                      "LV-9", "LV-10",
                                                      "LT-9", "LT-10",
                                                      "ME-9", "ME-10",
                                                      "NL-9", "NL-10",
                                                      "NO-9", "NO-10",
                                                      "PL-9", "PL-10",
                                                      "PT-9", "PT-10",
                                                      "RS-9", "RS-10",
                                                      "SK-9", "SK-10",
                                                      "SI-9", "SI-10",
                                                      "ES-9", "ES-10",
                                                      "SE-9", "SE-10",
                                                      "CH-9", "CH-10",
                                                      "GB-9", "GB-10"))

##--------------------------------------------------------------------------------------
##Narrow down to the variables we need for the MGCFA:
AllCountry_Round9to10_mgcfa<-AllCountry_Round9to10 %>%
        select(EcoThreat, CulThreat, GenThreat, CountryRound)
options(max.print = 99999)

##--------------------------------------------------------------------------------------
##Define the model for configural invariance
model_Config_COVID<-'
Threat=~EcoThreat+CulThreat+GenThreat
'

fit_Config_COVID<-cfa(model = model_Config_COVID,
                      data = AllCountry_Round9to10_mgcfa,
                      group = "CountryRound")

sink("./COVID_All countries sink results/Config_COVID.txt")
summary(fit_Config_COVID, fit.measures=TRUE, standardized=TRUE)
sink()
##df=0 --> perfect fit

##--------------------------------------------------------------------------------------
##M0: Define the model manually for metric invariance across time points within each country
model_MetricWithinCount_COVID<-'
Threat=~c(L101, L101, ##AT
        L102, L102, ##BE
        L103, L103, ##BG
        L104, L104, ##CH
        L105, L105, ##CY
        L106, L106, ##CZ
        L107, L107, ##DE
        L108, L108, ##EE
        L109, L109, ##ES
        L110, L110, ##FI
        L111, L111, ##FR
        L112, L112, ##GB
        L113, L113, ##HR
        L114, L114, ##HU
        L115, L115, ##IE
        L116, L116, ##IS
        L117, L117, ##IT
        L118, L118, ##LT
        L119, L119, ##LV
        L120, L120, ##ME
        L121, L121, ##NL
        L122, L122, ##NO
        L123, L123, ##PL
        L124, L124, ##PT
        L125, L125, ##RS
        L126, L126, ##SE
        L127, L127, ##SI
        L128, L128 ##SK
        )*EcoThreat+
        c(L201, L201, ##AT
        L202, L202, ##BE
        L203, L203, ##BG
        L204, L204, ##CH
        L205, L205, ##CY
        L206, L206, ##CZ
        L207, L207, ##DE
        L208, L208, ##EE
        L209, L209, ##ES
        L210, L210, ##FI
        L211, L211, ##FR
        L212, L212, ##GB
        L213, L213, ##HR
        L214, L214, ##HU
        L215, L215, ##IE
        L216, L216, ##IS
        L217, L217, ##IT
        L218, L218, ##LT
        L219, L219, ##LV
        L220, L220, ##ME
        L221, L221, ##NL
        L222, L222, ##NO
        L223, L223, ##PL
        L224, L224, ##PT
        L225, L225, ##RS
        L226, L226, ##SE
        L227, L227, ##SI
        L228, L228 ##SK
        )*CulThreat+
        c(L301, L301, ##AT
        L302, L302, ##BE
        L303, L303, ##BG
        L304, L304, ##CH
        L305, L305, ##CY
        L306, L306, ##CZ
        L307, L307, ##DE
        L308, L308, ##EE
        L309, L309, ##ES
        L310, L310, ##FI
        L311, L311, ##FR
        L312, L312, ##GB
        L313, L313, ##HR
        L314, L314, ##HU
        L315, L315, ##IE
        L316, L316, ##IS
        L317, L317, ##IT
        L318, L318, ##LT
        L319, L319, ##LV
        L320, L320, ##ME
        L321, L321, ##NL
        L322, L322, ##NO
        L323, L323, ##PL
        L324, L324, ##PT
        L325, L325, ##RS
        L326, L326, ##SE
        L327, L327, ##SI
        L328, L328 ##SK
        )*GenThreat
'

fit_MetricWithinCount_COVID<-cfa(model = model_MetricWithinCount_COVID,
                                 data = AllCountry_Round9to10_mgcfa,
                                 group = "CountryRound")

sink("./COVID_All countries sink results/MetricWithinCount_COVID.txt")
summary(fit_MetricWithinCount_COVID, fit.measures=TRUE, standardized=TRUE)
sink()




##------------------------------------------------------------------------------------------------
##M1:Full metric invariance across time points and across country 
##Define the model manually for metric invariance across time points and across country
model_FullMetric_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2, L2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3, L3, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3, L3, ##RS
        L3, L3, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_FullMetric_COVID<-cfa(model = model_FullMetric_COVID,
                          data = AllCountry_Round9to10_mgcfa,
                          group = "CountryRound")

sink("./COVID_All countries sink results/FullMetric_COVID.txt")
summary(fit_FullMetric_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/FullMetric_COVID_LocalFit.txt")
lavTestScore(fit_FullMetric_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M2:Full metric + CulThreat Loading FI9 free
model_MetricCulThreatFI9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3, L3, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3, L3, ##RS
        L3, L3, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricCulThreatFI9_COVID<-cfa(model = model_MetricCulThreatFI9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/MetricCulThreatFI9_COVID.txt")
summary(fit_MetricCulThreatFI9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricCulThreatFI9_COVID_LocalFit.txt")
lavTestScore(fit_MetricCulThreatFI9_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M3:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
model_MetricCulThreatFI10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3, L3, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3, L3, ##RS
        L3, L3, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricCulThreatFI10_COVID<-cfa(model=model_MetricCulThreatFI10_COVID,
                                    data = AllCountry_Round9to10_mgcfa,
                                    group="CountryRound")

sink("./COVID_All countries sink results/MetricCulThreatFI10_COVID.txt")
summary(fit_MetricCulThreatFI10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricCulThreatFI10_COVID_LocalFit.txt")
lavTestScore(fit_MetricCulThreatFI10_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M4:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10
model_MetricGenThreatSE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3, L3, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatSE10_COVID<-cfa(model = model_MetricGenThreatSE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatSE10_COVID.txt")
summary(fit_MetricGenThreatSE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricGenThreatSE10_COVID_LocalFit.txt")
lavTestScore(fit_MetricGenThreatSE10_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M5:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9
model_MetricGenThreatRS9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3, L3, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatRS9_COVID<-cfa(model = model_MetricGenThreatRS9_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatRS9_COVID.txt")
summary(fit_MetricGenThreatRS9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricGenThreatRS9_COVID_LocalFit.txt")
lavTestScore(fit_MetricGenThreatRS9_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M6:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9 + GenThreat Loading IT9
model_MetricGenThreatIT9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatIT9_COVID<-cfa(model = model_MetricGenThreatIT9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatIT9_COVID.txt")
summary(fit_MetricGenThreatIT9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricGenThreatIT9_COVID_LocalFit.txt")
lavTestScore(fit_MetricGenThreatIT9_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M7:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9 + GenThreat Loading IT9 
##+GenThreat Loading IT10
model_MetricGenThreatIT10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatIT10_COVID<-cfa(model = model_MetricGenThreatIT10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatIT10_COVID.txt")
summary(fit_MetricGenThreatIT10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricGenThreatIT10_COVID_LocalFit.txt")
lavTestScore(fit_MetricGenThreatIT10_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M8:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9 + GenThreat Loading IT9 
##+GenThreat Loading IT10 + CulThreat Loading DE10
model_MetricCulThreatDE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricCulThreatDE10_COVID<-cfa(model = model_MetricCulThreatDE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/MetricCulThreatDE10_COVID.txt")
summary(fit_MetricCulThreatDE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricCulThreatDE10_COVID_LocalFit.txt")
lavTestScore(fit_MetricCulThreatDE10_COVID,epc = TRUE)
sink()

##------------------------------------------------------------------------------------------------
##M9:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9 + GenThreat Loading IT9 
##+GenThreat Loading IT10 + CulThreat Loading DE10 + GenThreat Loading DE10
model_MetricGenThreatDE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatDE10_COVID<-cfa(model = model_MetricGenThreatDE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatDE10_COVID.txt")
summary(fit_MetricGenThreatDE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricGenThreatDE10_COVID_LocalFit.txt")
lavTestScore(fit_MetricGenThreatDE10_COVID,epc = TRUE)
sink()



##------------------------------------------------------------------------------------------------
##M10:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9 + GenThreat Loading IT9 
##+GenThreat Loading IT10 + CulThreat Loading DE10 + GenThreat Loading DE10
##+GenThreat Loading HU9
model_MetricGenThreatHU9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatHU9_COVID<-cfa(model = model_MetricGenThreatHU9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatHU9_COVID.txt")
summary(fit_MetricGenThreatHU9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

##local fit for chi-square difference test and EPC
sink("./COVID_All countries sink results/MetricGenThreatHU9_COVID_LocalFit.txt")
lavTestScore(fit_MetricGenThreatHU9_COVID,epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M11:Full metric + CulThreat Loading FI9 free + CulTHreat Loading FI10 free
##+GenThreat Loading SE10 + GenThreat Loading RS9 + GenThreat Loading IT9 
##+GenThreat Loading IT10 + CulThreat Loading DE10 + GenThreat Loading DE10
##+GenThreat Loading HU9 + GenThreat Loading HU10
model_MetricGenThreatHU10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
'

fit_MetricGenThreatHU10_COVID<-cfa(model = model_MetricGenThreatHU10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/MetricGenThreatHU10_COVID.txt")
summary(fit_MetricGenThreatHU10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M12:Partial Scalar Invariance
model_PartScalar_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1, I1, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2, I2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_PartScalar_COVID<-cfa(model = model_PartScalar_COVID,
                          data = AllCountry_Round9to10_mgcfa,
                          group = "CountryRound")

sink("./COVID_All countries sink results/PartScalar_COVID.txt")
summary(fit_PartScalar_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local MI
sink("./COVID_All countries sink results/PartScalar_COVID_LocalFit.txt")
lavTestScore(fit_PartScalar_COVID, epc = TRUE)
sink()



##------------------------------------------------------------------------------------------------
##M13:Partial Scalar Invariance + EcoThreat Intercept DE10
model_ScalarEcoThreatDE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1, I1, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2, I2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatDE10_COVID<-cfa(model = model_ScalarEcoThreatDE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatDE10_COVID.txt")
summary(fit_ScalarEcoThreatDE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local MI
sink("./COVID_All countries sink results/ScalarEcoThreatDE10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatDE10_COVID, epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M14:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
model_ScalarCulThreatFI9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1, I1, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatFI9_COVID<-cfa(model = model_ScalarCulThreatFI9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatFI9_COVID.txt")
summary(fit_ScalarCulThreatFI9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatFI9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatFI9_COVID, epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M15:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+CulThreat FI10
model_ScalarCulThreatFI10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1, I1, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatFI10_COVID<-cfa(model = model_ScalarCulThreatFI10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatFI10_COVID.txt")
summary(fit_ScalarCulThreatFI10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatFI10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatFI10_COVID, epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M16:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10
model_ScalarEcoThreatAT10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1, I1, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatAT10_COVID<-cfa(model = model_ScalarEcoThreatAT10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatAT10_COVID.txt")
summary(fit_ScalarEcoThreatAT10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatAT10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatAT10_COVID, epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M17:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
model_ScalarEcoThreatSE9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1F3, I1, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatSE9_COVID<-cfa(model = model_ScalarEcoThreatSE9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatSE9_COVID.txt")
summary(fit_ScalarEcoThreatSE9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatSE9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatSE9_COVID, epc = TRUE)
sink()



##------------------------------------------------------------------------------------------------
##M18:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10
model_ScalarEcoThreatSE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatSE10_COVID<-cfa(model = model_ScalarEcoThreatSE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatSE10_COVID.txt")
summary(fit_ScalarEcoThreatSE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatSE10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatSE10_COVID, epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M19:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10
model_ScalarEcoThreatCZ10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1, I1F5, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatCZ10_COVID<-cfa(model = model_ScalarEcoThreatCZ10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatCZ10_COVID.txt")
summary(fit_ScalarEcoThreatCZ10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatCZ10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatCZ10_COVID, epc = TRUE)
sink()




##------------------------------------------------------------------------------------------------
##M20:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
model_ScalarEcoThreatCZ9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatCZ9_COVID<-cfa(model = model_ScalarEcoThreatCZ9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")


sink("./COVID_All countries sink results/ScalarEcoThreatCZ9_COVID.txt")
summary(fit_ScalarEcoThreatCZ9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatCZ9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatCZ9_COVID, epc = TRUE)
sink()


##------------------------------------------------------------------------------------------------
##M21:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9
model_ScalarEcoThreatDE9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatDE9_COVID<-cfa(model = model_ScalarEcoThreatDE9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatDE9_COVID.txt")
summary(fit_ScalarEcoThreatDE9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatDE9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatDE9_COVID, epc = TRUE)
sink()

####-----------------------------------------------------------------------------------------
##M22:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9
model_ScalarEcoThreatRS9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1F8, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatRS9_COVID<-cfa(model = model_ScalarEcoThreatRS9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")


sink("./COVID_All countries sink results/ScalarEcoThreatRS9_COVID.txt")
summary(fit_ScalarEcoThreatRS9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatRS9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatRS9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M23:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
model_ScalarGenThreatIE9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1F8, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatIE9_COVID<-cfa(model = model_ScalarGenThreatIE9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")


sink("./COVID_All countries sink results/ScalarGenThreatIE9_COVID.txt")
summary(fit_ScalarGenThreatIE9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarGenThreatIE9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatIE9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M24:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10
model_ScalarGenThreatIE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1F8, I1, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatIE10_COVID<-cfa(model = model_ScalarGenThreatIE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarGenThreatIE10_COVID.txt")
summary(fit_ScalarGenThreatIE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarGenThreatIE10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatIE10_COVID, epc = TRUE)
sink()




####-----------------------------------------------------------------------------------------
##M25:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10
model_ScalarEcoThreatRS10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatRS10_COVID<-cfa(model = model_ScalarEcoThreatRS10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatRS10_COVID.txt")
summary(fit_ScalarEcoThreatRS10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatRS10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatRS10_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M26:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
model_ScalarGenThreatDE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatDE10_COVID<-cfa(model = model_ScalarGenThreatDE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarGenThreatDE10_COVID.txt")
summary(fit_ScalarGenThreatDE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarGenThreatDE10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatDE10_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M27:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10
model_ScalarEcoThreatPT10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatPT10_COVID<-cfa(model = model_ScalarEcoThreatPT10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")


sink("./COVID_All countries sink results/ScalarEcoThreatPT10_COVID.txt")
summary(fit_ScalarEcoThreatPT10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatPT10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatPT10_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M28:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9
model_ScalarCulThreatBE9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatBE9_COVID<-cfa(model = model_ScalarCulThreatBE9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatBE9_COVID.txt")
summary(fit_ScalarCulThreatBE9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatBE9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatBE9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M29:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
model_ScalarGenThreatIT9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatIT9_COVID<-cfa(model = model_ScalarGenThreatIT9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")


sink("./COVID_All countries sink results/ScalarGenThreatIT9_COVID.txt")
summary(fit_ScalarGenThreatIT9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarGenThreatIT9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatIT9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M30:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10
model_ScalarCulThreatSE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatSE10_COVID<-cfa(model = model_ScalarCulThreatSE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatSE10_COVID.txt")
summary(fit_ScalarCulThreatSE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatSE10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatSE10_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M31:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9
model_ScalarEcoThreatME9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatME9_COVID<-cfa(model = model_ScalarEcoThreatME9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")


sink("./COVID_All countries sink results/ScalarEcoThreatME9_COVID.txt")
summary(fit_ScalarEcoThreatME9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatME9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatME9_COVID, epc = TRUE)
sink()




####-----------------------------------------------------------------------------------------
##M32:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
model_ScalarEcoThreatME10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatME10_COVID<-cfa(model = model_ScalarEcoThreatME10_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatME10_COVID.txt")
summary(fit_ScalarEcoThreatME10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatME10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatME10_COVID, epc = TRUE)
sink()


####-----------------------------------------------------------------------------------------
##M33:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9
model_ScalarCulThreatLT9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatLT9_COVID<-cfa(model = model_ScalarCulThreatLT9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatLT9_COVID.txt")
summary(fit_ScalarCulThreatLT9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatLT9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatLT9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M34:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9
model_ScalarEcoThreatAT9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatAT9_COVID<-cfa(model = model_ScalarEcoThreatAT9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatAT9_COVID.txt")
summary(fit_ScalarEcoThreatAT9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()

#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatAT9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatAT9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M35:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
model_ScalarCulThreatNL10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'


fit_ScalarCulThreatNL10_COVID<-cfa(model = model_ScalarCulThreatNL10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatNL10_COVID.txt")
summary(fit_ScalarCulThreatNL10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatNL10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatNL10_COVID, epc = TRUE)
sink()




####-----------------------------------------------------------------------------------------
##M36:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9
model_ScalarEcoThreatHR9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatHR9_COVID<-cfa(model = model_ScalarEcoThreatHR9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatHR9_COVID.txt")
summary(fit_ScalarEcoThreatHR9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatHR9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatHR9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M37:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10
model_ScalarEcoThreatHU10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatHU10_COVID<-cfa(model = model_ScalarEcoThreatHU10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatHU10_COVID.txt")
summary(fit_ScalarEcoThreatHU10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatHU10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatHU10_COVID, epc = TRUE)
sink()




####-----------------------------------------------------------------------------------------
##M38:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
model_ScalarEcoThreatNL9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarEcoThreatNL9_COVID<-cfa(model = model_ScalarEcoThreatNL9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarEcoThreatNL9_COVID.txt")
summary(fit_ScalarEcoThreatNL9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarEcoThreatNL9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarEcoThreatNL9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M39:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
##+ GenThreat Intercept EE9
model_ScalarGenThreatEE9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3, I3F3, ##DE
        I3F5, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatEE9_COVID<-cfa(model = model_ScalarGenThreatEE9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarGenThreatEE9_COVID.txt")
summary(fit_ScalarGenThreatEE9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarGenThreatEE9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatEE9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M40:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
##+ GenThreat Intercept EE9 + GenThreat Intercept DE9
model_ScalarGenThreatDE9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3F6, I3F3, ##DE
        I3F5, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarGenThreatDE9_COVID<-cfa(model = model_ScalarGenThreatDE9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarGenThreatDE9_COVID.txt")
summary(fit_ScalarGenThreatDE9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarGenThreatDE9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarGenThreatDE9_COVID, epc = TRUE)
sink()




####-----------------------------------------------------------------------------------------
##M41:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
##+ GenThreat Intercept EE9 + GenThreat Intercept DE9 + CulThreat Intercept BE10
model_ScalarCulThreatBE10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2F7, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3F6, I3F3, ##DE
        I3F5, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatBE10_COVID<-cfa(model = model_ScalarCulThreatBE10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatBE10_COVID.txt")
summary(fit_ScalarCulThreatBE10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatBE10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatBE10_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M42:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
##+ GenThreat Intercept EE9 + GenThreat Intercept DE9 + CulThreat Intercept BE10
##+ CulThreat Intercept ES9
model_ScalarCulThreatES9_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2F7, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2F8, I2, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3F6, I3F3, ##DE
        I3F5, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatES9_COVID<-cfa(model = model_ScalarCulThreatES9_COVID,
                                  data = AllCountry_Round9to10_mgcfa,
                                  group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatES9_COVID.txt")
summary(fit_ScalarCulThreatES9_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatES9_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatES9_COVID, epc = TRUE)
sink()



####-----------------------------------------------------------------------------------------
##M43:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
##+ GenThreat Intercept EE9 + GenThreat Intercept DE9 + CulThreat Intercept BE10
##+ CulThreat Intercept ES9 + CulThreat Intercept ES10
model_ScalarCulThreatES10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2F7, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2F8, I2F9, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3F6, I3F3, ##DE
        I3F5, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatES10_COVID<-cfa(model = model_ScalarCulThreatES10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")

sink("./COVID_All countries sink results/ScalarCulThreatES10_COVID.txt")
summary(fit_ScalarCulThreatES10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()


#Check local fit
sink("./COVID_All countries sink results/ScalarCulThreatES10_COVID_LocalFit.txt")
lavTestScore(fit_ScalarCulThreatES10_COVID, epc = TRUE)
sink()




####-----------------------------------------------------------------------------------------
##M44:Partial Scalar Invariance + EcoThreat Intercept DE10 + CulThreat Intercept FI9
##+ CulThreat intercept FI10 + EcoThreat Intercept AT10 + EcoThreat Intercept SE9
##+ EcoThreat Intercept SE10 + EcoThreat Intercept CZ10 + EcoThreat Intercept CZ9
##+ EcoThreat Intercept DE9 + EcoThreat Intercept RS9 + GenThreat Intercept IE9
##+ GenThreat Intercept IE10 + EcoThreat Intercept RS10 + GenThreat Intercept DE10
##+ EcoTHreat Intercept PT10 + CulThreat Intercept BE9 + GenThreat Intercept IT9
##+ CulThreat INtercept SE10 + EcoThreat Intercept ME9 + EcoThreat Intercept ME10
##+ CulThreat Intercept LT9 + EcoThreat Intercept AT9 + CulThreat Intercept NL10
##+ EcoThreat Intercept HR9 + EcoThreat Intercept HU10 + EcoThreat Intercept NL9
##+ GenThreat Intercept EE9 + GenThreat Intercept DE9 + CulThreat Intercept BE10
##+ CulThreat Intercept ES9 + CulThreat Intercept ES10 + CulThreat Intercept LT10
model_ScalarCulThreatLT10_COVID<-'
Threat=~c(L1, L1, ##AT
        L1, L1, ##BE
        L1, L1, ##BG
        L1, L1, ##CH
        L1, L1, ##CY
        L1, L1, ##CZ
        L1, L1, ##DE
        L1, L1, ##EE
        L1, L1, ##ES
        L1, L1, ##FI
        L1, L1, ##FR
        L1, L1, ##GB
        L1, L1, ##HR
        L1, L1, ##HU
        L1, L1, ##IE
        L1, L1, ##IS
        L1, L1, ##IT
        L1, L1, ##LT
        L1, L1, ##LV
        L1, L1, ##ME
        L1, L1, ##NL
        L1, L1, ##NO
        L1, L1, ##PL
        L1, L1, ##PT
        L1, L1, ##RS
        L1, L1, ##SE
        L1, L1, ##SI
        L1, L1 ##SK
        )*EcoThreat+
        c(L2, L2, ##AT
        L2, L2, ##BE
        L2, L2, ##BG
        L2, L2, ##CH
        L2, L2, ##CY
        L2, L2, ##CZ
        L2, L2F3, ##DE
        L2, L2, ##EE
        L2, L2, ##ES
        L2F1, L2F2, ##FI
        L2, L2, ##FR
        L2, L2, ##GB
        L2, L2, ##HR
        L2, L2, ##HU
        L2, L2, ##IE
        L2, L2, ##IS
        L2, L2, ##IT
        L2, L2, ##LT
        L2, L2, ##LV
        L2, L2, ##ME
        L2, L2, ##NL
        L2, L2, ##NO
        L2, L2, ##PL
        L2, L2, ##PT
        L2, L2, ##RS
        L2, L2, ##SE
        L2, L2, ##SI
        L2, L2 ##SK
        )*CulThreat+
        c(L3, L3, ##AT
        L3, L3, ##BE
        L3, L3, ##BG
        L3, L3, ##CH
        L3, L3, ##CY
        L3, L3, ##CZ
        L3, L3F5, ##DE
        L3, L3, ##EE
        L3, L3, ##ES
        L3, L3, ##FI
        L3, L3, ##FR
        L3, L3, ##GB
        L3, L3, ##HR
        L3F6, L3F7, ##HU
        L3, L3, ##IE
        L3, L3, ##IS
        L3F3, L3F4, ##IT
        L3, L3, ##LT
        L3, L3, ##LV
        L3, L3, ##ME
        L3, L3, ##NL
        L3, L3, ##NO
        L3, L3, ##PL
        L3, L3, ##PT
        L3F2, L3, ##RS
        L3, L3F1, ##SE
        L3, L3, ##SI
        L3, L3 ##SK
        )*GenThreat
EcoThreat~c(I1F13, I1F2, ##AT
        I1, I1, ##BE
        I1, I1, ##BG
        I1, I1, ##CH
        I1, I1, ##CY
        I1F6, I1F5, ##CZ
        I1F7, I1F1, ##DE
        I1, I1, ##EE
        I1, I1, ##ES
        I1, I1, ##FI
        I1, I1, ##FR
        I1, I1, ##GB
        I1F14, I1, ##HR
        I1, I1F15, ##HU
        I1, I1, ##IE
        I1, I1, ##IS
        I1, I1, ##IT
        I1, I1, ##LT
        I1, I1, ##LV
        I1F11, I1F12, ##ME
        I1F16, I1, ##NL
        I1, I1, ##NO
        I1, I1, ##PL
        I1, I1F10, ##PT
        I1F8, I1F9, ##RS
        I1F3, I1F4, ##SE
        I1, I1, ##SI
        I1, I1 ##SK
        )*1
CulThreat~c(I2, I2, ##AT
        I2F3, I2F7, ##BE
        I2, I2, ##BG
        I2, I2, ##CH
        I2, I2, ##CY
        I2, I2, ##CZ
        I2, I2, ##DE
        I2, I2, ##EE
        I2F8, I2F9, ##ES
        I2F1, I2F2, ##FI
        I2, I2, ##FR
        I2, I2, ##GB
        I2, I2, ##HR
        I2, I2, ##HU
        I2, I2, ##IE
        I2, I2, ##IS
        I2, I2, ##IT
        I2F5, I2F10, ##LT
        I2, I2, ##LV
        I2, I2, ##ME
        I2, I2F6, ##NL
        I2, I2, ##NO
        I2, I2, ##PL
        I2, I2, ##PT
        I2, I2, ##RS
        I2, I2F4, ##SE
        I2, I2, ##SI
        I2, I2 ##SK
        )*1
GenThreat~c(I3, I3, ##AT
        I3, I3, ##BE
        I3, I3, ##BG
        I3, I3, ##CH
        I3, I3, ##CY
        I3, I3, ##CZ
        I3F6, I3F3, ##DE
        I3F5, I3, ##EE
        I3, I3, ##ES
        I3, I3, ##FI
        I3, I3, ##FR
        I3, I3, ##GB
        I3, I3, ##HR
        I3, I3, ##HU
        I3F1, I3F2, ##IE
        I3, I3, ##IS
        I3F4, I3, ##IT
        I3, I3, ##LT
        I3, I3, ##LV
        I3, I3, ##ME
        I3, I3, ##NL
        I3, I3, ##NO
        I3, I3, ##PL
        I3, I3, ##PT
        I3, I3, ##RS
        I3, I3, ##SE
        I3, I3, ##SI
        I3, I3 ##SK
        )*1
Threat~c(0,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,
        NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA,NA)*0
'

fit_ScalarCulThreatLT10_COVID<-cfa(model = model_ScalarCulThreatLT10_COVID,
                                   data = AllCountry_Round9to10_mgcfa,
                                   group = "CountryRound")


sink("./COVID_All countries sink results/ScalarCulThreatLT10_COVID.txt")
summary(fit_ScalarCulThreatLT10_COVID, fit.measures=TRUE, standardized=TRUE)
sink()
