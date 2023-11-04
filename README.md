# SEM_FinalPaper
R codes and all relevant documents to carry out the final paper for SEM

# Getting Data
- Go to ESS website and the Data Wizard portal: https://ess-search.nsd.no/CDW/RoundCountry
- Select the country and tick the rounds we need (e.g. BE, ESS3, ESS4, ESS5, ESS6 for Economic Crisis);
- Then click 'Select Variables': find 'Politics, including: political interest, efficacy, trust,electoral and other forms of participation, party allegiance, socio-political orientations' and click the 'ESS standard variables, Politcs' under this section;
- Tick the 3 varaibles we need for perceived ethnic threat: **imbgeco** (immigration bad or good for country's economy) / **imueclt** (Country's cultural life undermined or enriched by immigrants) / **imwbcnt** (Immigrants make country worse or better place to live)
- Name it in the same format inside the working directory: CrisisName_CountryCode_ESSRoundNumbers (e.g. EconomicCrisis_BE_ESS3-6)

## 68 MGCFA tests on each country across time points under each crises
### Step for each country 
- Data management: Read the relevant file in; treating missing values; reverse the coding so that higher value indicate stronger threat; name the 3 items as: EcoThreat, CulThreat, and GenThreat respectively; paste the country and ess round together to make the factor, which will be the grouping variable for MGCFA
- MGCFA: Define the model; run cfa() for configural, metric, and scalar invariance subsequently; compare the global fit statistics; compare the chi-square difference test results; for the significant chi-square difference test results, we will check which parameters are problematic
