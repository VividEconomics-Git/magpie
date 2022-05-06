*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

* Scenario for nr efficiency on croplands or pastures for selected (and
* respectively non-selected) countries in cropneff_countries and pastneff_countries

$setglobal c50_scen_neff  neff60_60_starty2010
$setglobal c50_scen_neff_noselect  neff60_60_starty2010
*   options: constant,
*   neff55_55_starty1990,neff60_60_starty1990,neff65_70_starty1990,
*   neff65_70_starty2010,neff60_60_starty2010,neff55_60_starty2010,
*   neff70_75_starty2010,neff75_80_starty2010,neff80_85_starty2010
*   neff75_85_starty2010,neff85_85_starty2010

$setglobal c50_scen_neff_pasture  constant
$setglobal c50_scen_neff_pasture_noselect  constant
*   options: constant,
*   neff55_55_starty1990,neff60_60_starty1990,neff65_70_starty1990,
*   neff65_70_starty2010,neff60_60_starty2010,neff55_60_starty2010,
*   neff70_75_starty2010,neff75_80_starty2010,neff80_85_starty2010
*   neff75_85_starty2010

$setglobal c50_dep_scen  history
*   options:   history

*** MB: APR 28, 2022. Adding the fertilizer scenario switch.
$setglobal c50_fert_scen  f200
*   options:   f100
*   f0,f10,f20,f30,f40,f50,f60,f70,f80,f90,f110,f120,f130,f140,f150,f160,f170,f180,f190,f200

scalar
      s50_fertilizer_costs Costs of fertilizer (USD05MER per tN)            / 600 /
;

* Set-switch for countries affected by country-specific neff scenarios
* Default: all iso countries selected
sets
  cropneff_countries(iso)   countries to be affected by chosen crop neff scenario / ABW,AFG,AGO,AIA,ALA,ALB,AND,ARE,ARG,ARM,
                          ASM,ATA,ATF,ATG,AUS,AUT,AZE,BDI,BEL,BEN,
                          BES,BFA,BGD,BGR,BHR,BHS,BIH,BLM,BLR,BLZ,
                          BMU,BOL,BRA,BRB,BRN,BTN,BVT,BWA,CAF,CAN,
                          CCK,CHN,CHE,CHL,CIV,CMR,COD,COG,COK,COL,
                          COM,CPV,CRI,CUB,CUW,CXR,CYM,CYP,CZE,DEU,
                          DJI,DMA,DNK,DOM,DZA,ECU,EGY,ERI,ESH,ESP,
                          EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,
                          GEO,GGY,GHA,GIB,GIN,GLP,GMB,GNB,GNQ,GRC,
                          GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,HRV,
                          HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,
                          ISR,ITA,JAM,JEY,JOR,JPN,KAZ,KEN,KGZ,KHM,
                          KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,
                          LKA,LSO,LTU,LUX,LVA,MAC,MAF,MAR,MCO,MDA,
                          MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,MNE,MNG,
                          MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,
                          NCL,NER,NFK,NGA,NIC,NIU,NLD,NOR,NPL,NRU,
                          NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
                          PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,
                          RWA,SAU,SDN,SEN,SGP,SGS,SHN,SJM,SLB,SLE,
                          SLV,SMR,SOM,SPM,SRB,SSD,STP,SUR,SVK,SVN,
                          SWE,SWZ,SXM,SYC,SYR,TCA,TCD,TGO,THA,TJK,
                          TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
                          UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,
                          VIR,VNM,VUT,WLF,WSM,YEM,ZAF,ZMB,ZWE /
  pastneff_countries(iso)   countries to be affected by chosen pasture neff scenario / ABW,AFG,AGO,AIA,ALA,ALB,AND,ARE,ARG,ARM,
                          ASM,ATA,ATF,ATG,AUS,AUT,AZE,BDI,BEL,BEN,
                          BES,BFA,BGD,BGR,BHR,BHS,BIH,BLM,BLR,BLZ,
                          BMU,BOL,BRA,BRB,BRN,BTN,BVT,BWA,CAF,CAN,
                          CCK,CHN,CHE,CHL,CIV,CMR,COD,COG,COK,COL,
                          COM,CPV,CRI,CUB,CUW,CXR,CYM,CYP,CZE,DEU,
                          DJI,DMA,DNK,DOM,DZA,ECU,EGY,ERI,ESH,ESP,
                          EST,ETH,FIN,FJI,FLK,FRA,FRO,FSM,GAB,GBR,
                          GEO,GGY,GHA,GIB,GIN,GLP,GMB,GNB,GNQ,GRC,
                          GRD,GRL,GTM,GUF,GUM,GUY,HKG,HMD,HND,HRV,
                          HTI,HUN,IDN,IMN,IND,IOT,IRL,IRN,IRQ,ISL,
                          ISR,ITA,JAM,JEY,JOR,JPN,KAZ,KEN,KGZ,KHM,
                          KIR,KNA,KOR,KWT,LAO,LBN,LBR,LBY,LCA,LIE,
                          LKA,LSO,LTU,LUX,LVA,MAC,MAF,MAR,MCO,MDA,
                          MDG,MDV,MEX,MHL,MKD,MLI,MLT,MMR,MNE,MNG,
                          MNP,MOZ,MRT,MSR,MTQ,MUS,MWI,MYS,MYT,NAM,
                          NCL,NER,NFK,NGA,NIC,NIU,NLD,NOR,NPL,NRU,
                          NZL,OMN,PAK,PAN,PCN,PER,PHL,PLW,PNG,POL,
                          PRI,PRK,PRT,PRY,PSE,PYF,QAT,REU,ROU,RUS,
                          RWA,SAU,SDN,SEN,SGP,SGS,SHN,SJM,SLB,SLE,
                          SLV,SMR,SOM,SPM,SRB,SSD,STP,SUR,SVK,SVN,
                          SWE,SWZ,SXM,SYC,SYR,TCA,TCD,TGO,THA,TJK,
                          TKL,TKM,TLS,TON,TTO,TUN,TUR,TUV,TWN,TZA,
                          UGA,UKR,UMI,URY,USA,UZB,VAT,VCT,VEN,VGB,
                          VIR,VNM,VUT,WLF,WSM,YEM,ZAF,ZMB,ZWE /
;

parameter f50_snupe(t_all,i,scen_neff50)  selected scenario values for soil nitrogen uptake efficiency (1)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_snupe.cs4"
$offdelim
/;

parameter f50_nue_pasture(t_all,i,scen_neff50)  selected scenario values for soil nitrogen uptake efficiency (1)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_nue_pasture.cs4"
$offdelim
/;


parameter f50_nr_fix_ndfa(t_all,i,kcr) Nr fixation rates per Nr in plant biomass (tNr per tNr)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_ndfa.cs4"
$offdelim
/;

parameter f50_nitrogen_balanceflow(t_all,i) Balancelfow to account for unrealistically high SNUpEs on croplands (mio. tNr per yr)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_nitrogen_balanceflow.cs4"
$offdelim
/;

parameter f50_nitrogen_balanceflow_pasture(t_all,i) Balancelfow to account for unrealistically high NUE on pastures (mio. tNr per yr)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_nitrogen_balanceflow_pasture.cs4"
$offdelim
/;


parameter f50_nr_fix_area(kcr) Nr fixation rates per area (tNr per ha)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_fixation_freeliving.cs4"
$offdelim
/;

parameter f50_nr_fixation_rates_pasture(t_all,i) Nr fixation rates per pasture area (tNr per ha)
/
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_nitrogen_fixation_rates_pasture.cs4"
$offdelim
/;

table f50_atmospheric_deposition_rates(t_all,j,land,dep_scen50) Nr deposition rates per area (tNr per ha)
$ondelim
$include "./modules/50_nr_soil_budget/input/f50_AtmosphericDepositionRates.cs3"
$offdelim
;

*** MB: APR 28, 2022, adding a data table of fertilizer price trajectories
$onempty
parameter f50_fertilizer_costs(t_all,fert_scen50) Fertilizer costs over time (USD05MER per tN)
$offempty
*/
*$ondelim
*$include "./modules/50_nr_soil_budget/input/f50_fertilizer_costs.csv"
*$offdelim
*/;
;

*** MB: APR 28, 2022. Having problems with reading in the CSV input file above, so temporarily adding the code below to fill in the fertilizer price trajectories
*** MB: APR 28, 2022. Assign the default MAgPIE 600 USD/t fertilizer price value to all years and all scenarios.
f50_fertilizer_costs(t_all,fert_scen50) = 600;

*** MB: APR 28, 2022. Assign the 2050 scenario fertilizer price as a multiple of the f100 scenario (i.e. default) value.
f50_fertilizer_costs('y2050','f0')       = f50_fertilizer_costs('y2050','f100')* 0;
f50_fertilizer_costs('y2050','f10')      = f50_fertilizer_costs('y2050','f100')* 0.10;
f50_fertilizer_costs('y2050','f20')      = f50_fertilizer_costs('y2050','f100')* 0.20;
f50_fertilizer_costs('y2050','f30')      = f50_fertilizer_costs('y2050','f100')* 0.30;
f50_fertilizer_costs('y2050','f40')      = f50_fertilizer_costs('y2050','f100')* 0.40;
f50_fertilizer_costs('y2050','f50')      = f50_fertilizer_costs('y2050','f100')* 0.50;
f50_fertilizer_costs('y2050','f60')      = f50_fertilizer_costs('y2050','f100')* 0.60;
f50_fertilizer_costs('y2050','f70')      = f50_fertilizer_costs('y2050','f100')* 0.70;
f50_fertilizer_costs('y2050','f80')      = f50_fertilizer_costs('y2050','f100')* 0.80;
f50_fertilizer_costs('y2050','f90')      = f50_fertilizer_costs('y2050','f100')* 0.90;
f50_fertilizer_costs('y2050','f100')     = f50_fertilizer_costs('y2050','f100')* 1;
f50_fertilizer_costs('y2050','f110')     = f50_fertilizer_costs('y2050','f100')* 1.1;
f50_fertilizer_costs('y2050','f120')     = f50_fertilizer_costs('y2050','f100')* 1.2;
f50_fertilizer_costs('y2050','f130')     = f50_fertilizer_costs('y2050','f100')* 1.3;
f50_fertilizer_costs('y2050','f140')     = f50_fertilizer_costs('y2050','f100')* 1.4;
f50_fertilizer_costs('y2050','f150')     = f50_fertilizer_costs('y2050','f100')* 1.5;
f50_fertilizer_costs('y2050','f160')     = f50_fertilizer_costs('y2050','f100')* 1.6;
f50_fertilizer_costs('y2050','f170')     = f50_fertilizer_costs('y2050','f100')* 1.7;
f50_fertilizer_costs('y2050','f180')     = f50_fertilizer_costs('y2050','f100')* 1.8;
f50_fertilizer_costs('y2050','f190')     = f50_fertilizer_costs('y2050','f100')* 1.9;
f50_fertilizer_costs('y2050','f200')     = f50_fertilizer_costs('y2050','f100')* 2.0;

*** MB: APR 28, 2022. For all scenarios, interpolate (linearly) the fertilizer prices for the years in between 2020 and 2050.
f50_fertilizer_costs('y2025',fert_scen50)= f50_fertilizer_costs('y2020',fert_scen50) + 0.167 * (f50_fertilizer_costs('y2050',fert_scen50) - f50_fertilizer_costs('y2020',fert_scen50));
f50_fertilizer_costs('y2030',fert_scen50)= f50_fertilizer_costs('y2020',fert_scen50) + 0.333 * (f50_fertilizer_costs('y2050',fert_scen50) - f50_fertilizer_costs('y2020',fert_scen50));
f50_fertilizer_costs('y2035',fert_scen50)= f50_fertilizer_costs('y2020',fert_scen50) + 0.500 * (f50_fertilizer_costs('y2050',fert_scen50) - f50_fertilizer_costs('y2020',fert_scen50));
f50_fertilizer_costs('y2040',fert_scen50)= f50_fertilizer_costs('y2020',fert_scen50) + 0.667 * (f50_fertilizer_costs('y2050',fert_scen50) - f50_fertilizer_costs('y2020',fert_scen50));
f50_fertilizer_costs('y2045',fert_scen50)= f50_fertilizer_costs('y2020',fert_scen50) + 0.833 * (f50_fertilizer_costs('y2050',fert_scen50) - f50_fertilizer_costs('y2020',fert_scen50));

*** MB: APR 28, 2022. For all scenarios, keep prices constant after 2050.
f50_fertilizer_costs('y2055',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2060',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2065',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2070',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2075',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2080',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2085',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2090',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2095',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
f50_fertilizer_costs('y2100',fert_scen50)= f50_fertilizer_costs('y2050',fert_scen50);
