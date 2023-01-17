*** |  (C) 2008-2022 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$setglobal c22_protect_scenario  BH
$setglobal c22_protect_scenario_noselect  none
$setglobal c22_restoration_scenario  fps_nature


scalars
s22_restore_land  If land restoration is allowed (0=no 1=yes) / 1 /
s22_exogenous_restoration_targets turn on or off exogenous restoration targets / 1 /
s22_conservation_start		Land conservation target year				/ 2020 /
s22_conservation_target		Land conservation target year				/ 2030 /
;

* Set-switch for countries affected by regional land conservation policy
* Default: all iso countries selected
sets
  policy_countries22(iso) countries to be affected by land conservation policy
                        / AUS, HMD, CHN, HKG, MAC, TWN, ALA, 
                                   AND, AUT, BEL, BGR, CHE, CYP, CZE, 
                                   DEU, DNK, ESP, EST, FIN, FRA, FRO, 
                                   GBR, GGY, GIB, GRC, HRV, HUN, IMN,
                                   IRL, ISL, ITA, JEY, LIE, LTU, LUX, 
                                   LVA, MCO, MLT, NLD, NOR, POL, PRT, 
                                   ROU, SJM, SMR, SVK, SVN, SWE, VAT, 
                                   IND, JPN, ARE, BHR, DZA, EGY, ESH, 
                                   IRN, IRQ, ISR, JOR, KWT, LBN, LBY,
                                   MAR, OMN, PSE, QAT, SAU, SDN, SYR, 
                                   TUN, YEM, CAN, ALB, BIH, BLR, MDA, 
                                   MKD, MNE, SRB, UKR, ARM, AZE, GEO, 
                                   KAZ, KGZ, RUS, TJK, TKM, TUR, UZB, 
                                   GRL, KOR, MNG, NZL, PRK, SPM, BRA,
                                   BWA, LSO, NAM, SWZ, ZAF, BRN, IDN, 
                                   KHM, LAO, MMR, MYS, PHL, SGP, THA, 
                                   VNM, CCK, CXR, NFK, ASM, COK, FJI, 
                                   FSM, GUM, IOT, KIR, MHL, MNP, NCL, 
                                   NIU, NRU, PCN, PLW, PNG, PYF, SLB, 
                                   TKL, TLS, TON, TUV, UMI, VUT, WLF, 
                                   WSM, ARG, CHL, URY, ATF /
;

table f22_wdpa_baseline(t_all,j,land) Initial protected area as derived from WDPA until 2020 (mio. ha)
$ondelim
$include "./modules/22_land_conservation/input/wdpa_baseline.cs3"
$offdelim
;
* fix to 2020 values for years after 2020
m_fillmissingyears(f22_wdpa_baseline,"j,land");

table f22_consv_prio(j,consv_prio22,land) Conservation priority areas (mio. ha)
$ondelim
$include "./modules/22_land_conservation/input/consv_prio_areas.cs3"
$offdelim
;

table f22_land_iso(t_ini10,iso,land) Land area for different land pools at ISO level (mio. ha)
$ondelim
$include "./modules/22_land_conservation/input/avl_land_t_iso.cs3"
$offdelim;

table f22_restoration_targets(j,restoration_scens,t_all,types_of_restoration)   Restoration targets per year (1)
$ondelim
$include "./modules/22_land_conservation/input/restoration_targets.csv"
$offdelim
;
