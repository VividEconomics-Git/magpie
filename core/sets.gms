*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*************************BASIC SETS (INDICES)***********************************

*###############################################################################
*######################## R SECTION START (SETS) ###############################
* THIS CODE IS CREATED AUTOMATICALLY, DO NOT MODIFY THESE LINES DIRECTLY
* ANY DIRECT MODIFICATION WILL BE LOST AFTER NEXT AUTOMATIC UPDATE!

sets

  h all superregional economic regions
    / ASN, AUS, CHN, EUR, IND, JPN, MNA, NAM, OEU, RCA, ROW, SCA, SSA /

  i all economic regions
    / ASN, AUS, CHN, EUR, IND, JPN, MNA, NAM, OEU, RCA, ROW, SCA, SSA /

  supreg(h,i) mapping of superregions to its regions
    / ASN . (ASN)
      AUS . (AUS)
      CHN . (CHN)
      EUR . (EUR)
      IND . (IND)
      JPN . (JPN)
      MNA . (MNA)
      NAM . (NAM)
      OEU . (OEU)
      RCA . (RCA)
      ROW . (ROW)
      SCA . (SCA)
      SSA . (SSA) /

  iso list of iso countries
    / BRN, IDN, KHM, LAO, MMR, MYS, PHL, SGP, THA, VNM, AUS, CCK, CXR, HMD,
      NFK, CHN, HKG, MAC, TWN, ALA, AND, AUT, BEL, BGR, CHE, CYP, CZE, DEU,
      DNK, ESP, EST, FIN, FRA, FRO, GBR, GGY, GIB, GRC, HRV, HUN, IMN, IRL,
      ISL, ITA, JEY, LIE, LTU, LUX, LVA, MCO, MLT, NLD, NOR, POL, PRT, ROU,
      SJM, SMR, SVK, SVN, SWE, VAT, IND, JPN, ARE, BHR, DZA, EGY, ESH, IRN,
      IRQ, ISR, JOR, KWT, LBN, LBY, MAR, OMN, PSE, QAT, SAU, SDN, SYR, TUN,
      YEM, CAN, MEX, USA, ALB, BIH, BLR, MDA, MKD, MNE, SRB, UKR, ARM, AZE,
      GEO, KAZ, KGZ, RUS, TJK, TKM, TUR, UZB, AFG, ASM, ATA, BGD, BMU, BTN,
      BVT, COK, FJI, FSM, GRL, GUM, IOT, KIR, KOR, LKA, MDV, MHL, MNG, MNP,
      NCL, NIU, NPL, NRU, NZL, PAK, PCN, PLW, PNG, PRK, PYF, SGS, SLB, SPM,
      TKL, TLS, TON, TUV, UMI, VUT, WLF, WSM, ABW, AIA, ARG, ATG, BES, BHS,
      BLM, BLZ, BOL, BRA, BRB, CHL, COL, CRI, CUB, CUW, CYM, DMA, DOM, ECU,
      FLK, GLP, GRD, GTM, GUF, GUY, HND, HTI, JAM, KNA, LCA, MAF, MSR, MTQ,
      NIC, PAN, PER, PRI, PRY, SLV, SUR, SXM, TCA, TTO, URY, VCT, VEN, VGB,
      VIR, AGO, ATF, BDI, BEN, BFA, BWA, CAF, CIV, CMR, COD, COG, COM, CPV,
      DJI, ERI, ETH, GAB, GHA, GIN, GMB, GNB, GNQ, KEN, LBR, LSO, MDG, MLI,
      MOZ, MRT, MUS, MWI, MYT, NAM, NER, NGA, REU, RWA, SEN, SHN, SLE, SOM,
      SSD, STP, SWZ, SYC, TCD, TGO, TZA, UGA, ZAF, ZMB, ZWE /

  j number of LPJ cells
    / ASN_1*ASN_5,
      AUS_6*AUS_8,
      CHN_9*CHN_31,
      EUR_32*EUR_38,
      IND_39*IND_44,
      JPN_45,
      MNA_46*MNA_72,
      NAM_73*NAM_105,
      OEU_106,
      RCA_107*RCA_120,
      ROW_121*ROW_131,
      SCA_132*SCA_163,
      SSA_164*SSA_200 /

  cell(i,j) number of LPJ cells per region i
    / ASN . (ASN_1*ASN_5)
      AUS . (AUS_6*AUS_8)
      CHN . (CHN_9*CHN_31)
      EUR . (EUR_32*EUR_38)
      IND . (IND_39*IND_44)
      JPN . (JPN_45)
      MNA . (MNA_46*MNA_72)
      NAM . (NAM_73*NAM_105)
      OEU . (OEU_106)
      RCA . (RCA_107*RCA_120)
      ROW . (ROW_121*ROW_131)
      SCA . (SCA_132*SCA_163)
      SSA . (SSA_164*SSA_200) /

  i_to_iso(i,iso) mapping regions to iso countries
    / ASN . (BRN, IDN, KHM, LAO, MMR, MYS, PHL, SGP, THA, VNM)
      AUS . (AUS, CCK, CXR, HMD, NFK)
      CHN . (CHN, HKG, MAC, TWN)
      EUR . (ALA, AND, AUT, BEL, BGR, CHE, CYP, CZE, DEU, DNK, ESP, EST, FIN)
      EUR . (FRA, FRO, GBR, GGY, GIB, GRC, HRV, HUN, IMN, IRL, ISL, ITA, JEY)
      EUR . (LIE, LTU, LUX, LVA, MCO, MLT, NLD, NOR, POL, PRT, ROU, SJM, SMR)
      EUR . (SVK, SVN, SWE, VAT)
      IND . (IND)
      JPN . (JPN)
      MNA . (ARE, BHR, DZA, EGY, ESH, IRN, IRQ, ISR, JOR, KWT, LBN, LBY, MAR)
      MNA . (OMN, PSE, QAT, SAU, SDN, SYR, TUN, YEM)
      NAM . (CAN, MEX, USA)
      OEU . (ALB, BIH, BLR, MDA, MKD, MNE, SRB, UKR)
      RCA . (ARM, AZE, GEO, KAZ, KGZ, RUS, TJK, TKM, TUR, UZB)
      ROW . (AFG, ASM, ATA, BGD, BMU, BTN, BVT, COK, FJI, FSM, GRL, GUM, IOT)
      ROW . (KIR, KOR, LKA, MDV, MHL, MNG, MNP, NCL, NIU, NPL, NRU, NZL, PAK)
      ROW . (PCN, PLW, PNG, PRK, PYF, SGS, SLB, SPM, TKL, TLS, TON, TUV, UMI)
      ROW . (VUT, WLF, WSM)
      SCA . (ABW, AIA, ARG, ATG, BES, BHS, BLM, BLZ, BOL, BRA, BRB, CHL, COL)
      SCA . (CRI, CUB, CUW, CYM, DMA, DOM, ECU, FLK, GLP, GRD, GTM, GUF, GUY)
      SCA . (HND, HTI, JAM, KNA, LCA, MAF, MSR, MTQ, NIC, PAN, PER, PRI, PRY)
      SCA . (SLV, SUR, SXM, TCA, TTO, URY, VCT, VEN, VGB, VIR)
      SSA . (AGO, ATF, BDI, BEN, BFA, BWA, CAF, CIV, CMR, COD, COG, COM, CPV)
      SSA . (DJI, ERI, ETH, GAB, GHA, GIN, GMB, GNB, GNQ, KEN, LBR, LSO, MDG)
      SSA . (MLI, MOZ, MRT, MUS, MWI, MYT, NAM, NER, NGA, REU, RWA, SEN, SHN)
      SSA . (SLE, SOM, SSD, STP, SWZ, SYC, TCD, TGO, TZA, UGA, ZAF, ZMB, ZWE) /

;
*######################### R SECTION END (SETS) ################################
*###############################################################################

sets
        h2(h) Superregional (dynamic set)
        i2(i) World regions (dynamic set)
        j2(j) Spatial Clusters (dynamic set)
;

h2(h) = yes;
i2(i) = yes;
j2(j) = yes;

sets
        c_title defined to include c_title in GDX
        / %c_title% /
;

***TIME STEPS***
* ATTENTION: check macros m_year and m_yeardiff if you change something
*            here as they need to make some assumption about these settings,
*            especially having 1965 as start year, having t2 as alias of t and
*            having ct as current time step
sets time_annual Annual extended time steps
    / y1965*y2150 /

    t_ext 5-year time periods
    /
    y1965, y1970, y1975, y1980, y1985, y1990,
    y1995, y2000, y2005, y2010, y2015, y2020, y2025, y2030, y2035, y2040,
    y2045, y2050, y2055, y2060, y2065, y2070, y2075, y2080, y2085, y2090,
    y2095, y2100, y2105, y2110, y2115, y2120, y2125, y2130, y2135, y2140,
    y2145, y2150, y2155, y2160, y2165, y2170, y2175, y2180, y2185, y2190,
    y2195, y2200, y2205, y2210, y2215, y2220, y2225, y2230, y2235, y2240,
    y2245, y2250
    /

    t_all(t_ext) 5-year time periods
    / y1965, y1970, y1975, y1980, y1985, y1990,
      y1995, y2000, y2005, y2010, y2015, y2020, y2025, y2030, y2035, y2040,
      y2045, y2050, y2055, y2060, y2065, y2070, y2075, y2080, y2085, y2090,
      y2095, y2100, y2105, y2110, y2115, y2120, y2125, y2130, y2135, y2140,
      y2145, y2150 /

    t_historical(t_all) Historical period
    /   y1965, y1970, y1975, y1980, y1985, y1990 /

    t_future(t_all) 5-year time periods
    / y2105, y2110, y2115, y2120, y2125, y2130, y2135, y2140,
      y2145, y2150 /

    t_past_forestry(t_all) Forestry Timesteps with observed data
    / y1965, y1970, y1975,
     y1980, y1985, y1990,
     y1995, y2000, y2005, y2010, y2015
    /

;


set t_past(t_all) Timesteps with observed data
$If "%c_past%"== "till_2010" /y1965, y1970, y1975, y1980, y1985, y1990,y1995, y2000, y2005, y2010/;
$If "%c_past%"== "till_1965" /y1965/;
$If "%c_past%"== "till_1975" /y1965, y1970, y1975/;
$If "%c_past%"== "till_1995" /y1965, y1970, y1975, y1980, y1985, y1990, y1995/;


set t(t_all) Simulated time periods
$If "%c_timesteps%"== "less_TS" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2070,y2080,y2090,y2100,y2110,y2130,y2150/;
$If "%c_timesteps%"== "coup2100" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2070,y2080,y2090,y2100/;
$If "%c_timesteps%"== "test_TS" /y1995,y2000,y2005,y2010,y2020,y2030,y2040,y2050,y2070,y2090,y2110,y2130,y2150/;
$If "%c_timesteps%"== "TS_benni" /y1995,y2000,y2005,y2010,y2020,y2030,y2040,y2050/;
$If "%c_timesteps%"== "TS_WB" /y1995,y2000,y2005,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080/;
$If "%c_timesteps%"== "5year" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2065,y2070,y2075,y2080,y2085,y2090,y2095,y2100/;
$If "%c_timesteps%"== "5year2050" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050/;
$If "%c_timesteps%"== "5year2070" /y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2065,y2070/;
$If "%c_timesteps%"== "quicktest" /y1995,y2010,y2025/;
$If "%c_timesteps%"== "quicktest2" /y1995,y2020,y2050,y2100/;
$If "%c_timesteps%"== "calib" /y1995,y2000,y2005,y2010,y2015/;
$If "%c_timesteps%"== "1" /y1995/;
$If "%c_timesteps%"== "2" /y1995,y2000/;
$If "%c_timesteps%"== "3" /y1995,y2000,y2010/;
$If "%c_timesteps%"== "4" /y1995,y2000,y2010,y2020/;
$If "%c_timesteps%"== "5" /y1995,y2000,y2010,y2020,y2030/;
$If "%c_timesteps%"== "6" /y1995,y2000,y2010,y2020,y2030,y2040/;
$If "%c_timesteps%"== "7" /y1995,y2000,y2010,y2020,y2030,y2040,y2050/;
$If "%c_timesteps%"== "8" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060/;
$If "%c_timesteps%"== "9" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070/;
$If "%c_timesteps%"=="10" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080/;
$If "%c_timesteps%"=="11" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090/;
$If "%c_timesteps%"=="12" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100/;
$If "%c_timesteps%"=="13" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110/;
$If "%c_timesteps%"=="14" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120/;
$If "%c_timesteps%"=="15" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120,y2130/;
$If "%c_timesteps%"=="16" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120,y2130,y2140/;
$If "%c_timesteps%"=="17" /y1995,y2000,y2010,y2020,y2030,y2040,y2050,y2060,y2070,y2080,y2090,y2100,y2110,y2120,y2130,y2140,y2150/;
$If "%c_timesteps%"=="past" /y1965,y1970,y1975,y1980,y1985,y1990,y1995,y2000,y2005,y2010/;
$If "%c_timesteps%"=="pastandfuture" /y1965,y1970,y1975,y1980,y1985,y1990,y1995,y2000,y2005,y2010,y2015,y2020,y2025,y2030,y2035,y2040,y2045,y2050,y2055,y2060,y2065,y2070,y2075,y2080,y2085,y2090,y2095,y2100/;
set ct(t) Current time period;
set pt(t) Previous time period;
set ct_all(t_all) Current time period for loops over t_all;

alias(t,t2);

sets

***Products***

   kall All products in the sectoral version
   /
   tece,maiz,trce,rice_pro,soybean,rapeseed,groundnut,sunflower,oilpalm,puls_pro,
   potato,cassav_sp,sugr_cane,sugr_beet,others,cottn_pro,foddr, pasture, begr, betr,
   oils,oilcakes,sugar,molasses,alcohol,ethanol,distillers_grain,brans,scp,fibres,
   livst_rum, livst_pig,livst_chick, livst_egg, livst_milk, fish,
   res_cereals, res_fibrous, res_nonfibrous, wood, woodfuel
   /

  dev Economic development status
       / lic, mic, hic /

***TYPE OF WATER SUPPLY***
   w Water supply type / rainfed, irrigated /

***WATER SOURCES***
   wat_src Type of water source / surface, ground, technical, ren_ground /

***WATER DEMAND sectors***
   wat_dem Water demand sectors / agriculture, domestic, manufacturing, electricity, ecosystem /

***LAND POOLS***
   land Land pools
        / crop, past, forestry, primforest, secdforest, urban, other /

  land_ag(land) Agricultural land pools
                  / crop, past /

  forest_land(land) land from which timber can be taken away
  / forestry, primforest, secdforest,other /

  land_natveg(forest_land) Natural vegetation land pools
        / primforest, secdforest, other /

  forest_type forest type
         / plantations, natveg /

   si Suitability classes
        / si0, nsi0 /

***Forestry**
  ac Age classes  / ac0,ac5,ac10,ac15,ac20,ac25,ac30,ac35,ac40,ac45,ac50,
                    ac55,ac60,ac65,ac70,ac75,ac80,ac85,ac90,ac95,ac100,
                    ac105,ac110,ac115,ac120,ac125,ac130,ac135,ac140,ac145,
                    ac150,ac155,acx /

  ac_est(ac) Dynamic subset of age classes for establishment

  ac_sub(ac) Dynamic subset of age classes excluding establishment

   chap_par Chapman-richards parameters / k,m /

*** Nutrients
   attributes Product attributes characterizing a product (such as weight or energy content)
   /dm,ge,nr,p,k,wm,c/
* dry matter, gross energy, reactive nitrogen, phosphorus, potash, wet matters

   nutrients(attributes) Nutrient related product attributes
   /dm,ge,nr,p,k/

  dm_ge_nr(nutrients) Attribtues relevant for nutrition
       / dm,ge,nr /

  npk(nutrients) Plant nutrients
   /nr,p,k/

  cgf Residue production functions
   /slope, intercept, bg_to_ag/

***Emissions ***

   emis_source Emission sources
   / inorg_fert, man_crop, awms, resid, man_past, som,
     rice, ent_ferm,
     resid_burn,
     crop_vegc, crop_litc, crop_soilc,
     past_vegc, past_litc, past_soilc,
     forestry_vegc, forestry_litc, forestry_soilc,
     primforest_vegc, primforest_litc, primforest_soilc,
secdforest_vegc, secdforest_litc, secdforest_soilc,     urban_vegc, urban_litc, urban_soilc,
     other_vegc, other_litc, other_soilc,
     peatland/

   emis_oneoff(emis_source) oneoff emission sources
   / crop_vegc, crop_litc, crop_soilc, past_vegc, past_litc, past_soilc, forestry_vegc,
   forestry_litc, forestry_soilc, primforest_vegc, primforest_litc, primforest_soilc,
   secdforest_vegc, secdforest_litc, secdforest_soilc,
   urban_vegc, urban_litc, urban_soilc, other_vegc, other_litc, other_soilc /

   emis_annual(emis_source) annual emission sources
   / inorg_fert, man_crop, awms, resid, man_past, som,
   rice, ent_ferm, resid_burn, peatland /

   c_pools Carbon pools
   /vegc,litc,soilc/

***TECHNICAL STUFF***
   type GAMS variable attribute used for the output / level, marginal, upper, lower /

***RELATIONSHIPS BETWEEN DIFFERENT SETS***

  emis_land(emis_oneoff,land,c_pools) Mapping between land and carbon pools
  /crop_vegc        . (crop) . (vegc)
   crop_litc        . (crop) . (litc)
   crop_soilc       . (crop) . (soilc)
   past_vegc        . (past) . (vegc)
   past_litc        . (past) . (litc)
   past_soilc       . (past) . (soilc)
   forestry_vegc    . (forestry) . (vegc)
   forestry_litc    . (forestry) . (litc)
   forestry_soilc   . (forestry) . (soilc)
   primforest_vegc  . (primforest) . (vegc)
   primforest_litc  . (primforest) . (litc)
   primforest_soilc . (primforest) . (soilc)
   secdforest_vegc  . (secdforest) . (vegc)
   secdforest_litc  . (secdforest) . (litc)
   secdforest_soilc . (secdforest) . (soilc)
   urban_vegc       . (urban) . (vegc)
   urban_litc       . (urban) . (litc)
   urban_soilc      . (urban) . (soilc)
   other_vegc       . (other) . (vegc)
   other_litc       . (other) . (litc)
   other_soilc      . (other) . (soilc)
   /

;

alias(ac,ac2);
alias(ac_sub,ac_sub2);
alias(ac_est,ac_est2);

*** EOF sets.gms ***
