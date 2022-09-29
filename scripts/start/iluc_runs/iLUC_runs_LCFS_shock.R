
# |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
# |  authors, and contributors see CITATION.cff file. This file is part
# |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
# |  AGPL-3.0, you are granted additional permissions described in the
# |  MAgPIE License Exception, version 1.0 (see LICENSE file).
# |  Contact: magpie@pik-potsdam.de

# ----------------------------------------------------------
# description: This script allows the user to run many MAgPIE scenarios
# with different input datasets. It seems it's not possible 
# (or not easy) to do this by setting scenarios in the "scenario_config.csv"
# file. Note this script was adapted from a PIK start script, 
# hence the header.
# 
# ----------------------------------------------------------


######################################
#### Script to start a MAgPIE run ####
######################################

library(gms)
library(lucode2)
library(magclass)


# Load start_run(cfg) function which is needed to start MAgPIE runs
source("scripts/start_functions.R")

#start MAgPIE run
source("config/default.cfg")

cfg$output <- c("rds_report")
project <- "WBCSD"
input_flag <- "220825" #ddmmyy

# 
# setwd("~/Land Use analysis/magpie") # Github instead of Land Use analysis for anyone who's not FV
# 
# # Create folders required for this
# # dir.create("./patch_inputdata")
# dir.create("./patch_inputdata/patch_WBCSD")
# 
# ### HERE COPY FILES TO NEW FOLDER MANUALLY - could write into code ###
# 
# gms::tardir(dir="C:\\Users\\Francesca Ventimigli\\Box Sync\\210830 WBCSD Moore\\6 - Analysis\\WBCSD themes\\Inputs to change\\patch_WBCSD",
#             tarfile="patch_inputdata/patch_WBCSD.tgz")
# 
# unlink("patch_inputdata/patch_WBCSD", recursive=TRUE)



# Loop over scenarios
# User can define which scenarios they want to loop over. Then below the user
# must specify the configuration they want for each scenario.
for (scen in c("LCFS_shock")) { # LCFS_const2020
  print(paste0("Running: ", scen))
  
  
  cfg$repositories <- append(list("https://rse.pik-potsdam.de/data/magpie/public"=NULL,
                                  "./patch_inputdata"=NULL),
                             getOption("magpie_repos"))
  
  cfg$title <- scen
  cfg$recalc_npi_ndc <- "TRUE"
  cfg$force_download <- TRUE # set this to true so that we always redistribute new input files
  cfg$gms$c_timesteps <- "5year2050" #"quicktest2" for quick, "5year2050" for 2050
  
  
  cfg$input <- c(regional    = "WARNINGS47_rev4.73_694a3a5b_magpie.tgz",
                 cellular    = "WARNINGS89_rev4.73_694a3a5b_fd712c0b_cellularmagpie_c200_MRI-ESM2-0-ssp370_lpjml-8e6c5eb1.tgz",
                 validation  = "WARNINGS106_rev4.73_694a3a5b_validation.tgz ",
                 calibration = "calibration_IPR2022.tgz",
                 additional  = "additional_data_rev4.26.tgz",
                 #paste0("patch_",project,"_",scen,"_", input_flag,".tgz")
                 "patch_iluc_LCFS_shock_27_09.tgz") # patch_iluc_LCFS_shock.tgz
  
  
  
  #FPS22
  
  if(scen == "LCFS_shock") {
    
    
    #1. Physical risks
    
    cfg$gms$c42_watdem_scenario <- "nocc"
    cfg$gms$c43_watavail_scenario <- "nocc"
    cfg$gms$c14_yields_scenario <- "nocc"
    cfg$gms$c52_carbon_scenario <- "nocc"
    cfg$gms$c59_som_scenario <- "nocc"
    
    #2. Diets
    
    cfg$gms$c15_exo_foodscen <- "bespoke"
    cfg$gms$s15_exo_diet <- 1
    
    cfg$gms$c15_kcal_scen <- "endogenous"
    cfg$gms$c15_EAT_scen <- "bau_AP_3pc" #  nature_tech
    
    #3.a Other policies
    
    cfg$gms$c32_aff_policy <- "ndc"
    cfg$gms$c35_ad_policy <- "ndc"
    cfg$gms$c35_aolc_policy <- "ndc"
    
    
    #3.b Protected areas
    
    cfg$gms$c22_protect_scenario <- "BH"			# def = None
    cfg$gms$c22_protect_scenario_noselect <- "none"     # def = None
    
    cfg$gms$policy_countries22  <- "ALA,AUS,AUT,BEL,BGR,CAN,CHN,CYP,EST,ESP,GBR,
                               FRA,FRO,GGY,HUN,GIB,GRC,HRV,IMN,
                               IRL,JEY,LTU,MLT,NLD,POL,PRT,ROU,
                               AND,ISL,LIE,MCO,SJM,SMR,VAT,ALB,
                               BIH,MKD,MNE,SRB,TUR,GRL,HKG,TWN,
                               CZE,DEU,DNK,ITA,LUX,LVA,SVK,SVN,
                               SWE,SWZ,JPN,KOR,FIN,NOR,USA,NZL,
                               PRK,SPM"
    
    cfg$gms$s22_restore_land <- 1
    
    cfg$gms$s22_conservation_start <- 2025       # def = 2020
    cfg$gms$s22_conservation_target <- 2035       # def = 2030
    
    cfg$gms$s22_exogenous_restoration_targets <- 0			 # def = 0
    cfg$gms$c22_restoration_scenario <- "none"				 # def = "none"
    
    #4. GHG prices
    
    cfg$gms$c56_pollutant_prices <- "fps_developed"
    cfg$gms$c56_pollutant_prices_noselect <- "fps_developing"
    cfg$gms$s56_ghgprice_start <- 2025
    
    cfg$gms$policy_countries56 <- "ALA,AUS,AUT,BEL,BGR,CAN,CHN,CYP,EST,ESP,GBR,
                               FRA,FRO,GGY,HUN,GIB,GRC,HRV,IMN,
                               IRL,JEY,LTU,MLT,NLD,POL,PRT,ROU,
                               AND,ISL,LIE,MCO,SJM,SMR,VAT,ALB,
                               BIH,MKD,MNE,SRB,TUR,GRL,HKG,TWN,
                               CZE,DEU,DNK,ITA,LUX,LVA,SVK,SVN,
                               SWE,SWZ,JPN,KOR,FIN,NOR,USA,NZL,
                               PRK,SPM"
    
    #5. Bioenergy demand
    
    cfg$gms$c60_2ndgen_biodem <- "fps_base"
    cfg$gms$c60_1stgen_biodem <- "LCFS"
    
    
    #6. SNUpE
    
    cfg$gms$maccs  <- "on_sep16"                     # def = on_sep16
    cfg$gms$c57_macc_version <- "PBL_2019"
    cfg$gms$nitrogen    <- "ipcc2006_sep16"                 # def = ipcc2006_sep16
    cfg$gms$c50_scen_neff <- "neff65_70_starty1990"   # def = neff60_60_starty2010
    cfg$gms$c50_scen_neff_pasture <- "constant"   # def = constant
    
    #7. Yields
    
    cfg$gms$c13_tccost <- "medium"		# def = medium
    
    #8. Food waste
    
    cfg$gms$s15_exo_waste <- 1               # def = 0
    cfg$gms$s15_waste_scen <- 1.2          # def = 1.2
    cfg$gms$c15_exo_wastescen <- "bespoke_waste"
    
    
    # 9.Timber
    
    cfg$gms$s32_initial_distribution <- 3 # * 3= Poulter distribution - age-classes in timber plantations are initialized based on rotation length and can change dynamically over time.
    cfg$gms$s32_hvarea <- 2 # * 2 = "Endogenous" scenario. Harvest from plantations including age-class shifting. All plantations are harvested at rotation age. Plantation establishment is endogenous.
    cfg$gms$s35_secdf_distribution <- 2 # * (2): Distribution of secondary forest according to Poulter et al 2018 based on MODIS satellite data
    cfg$gms$s35_hvarea <- 2 # * 2 = Timber production from natveg including age-class shifting
    cfg$gms$s73_timber_demand_switch <- 1 # * 1=on Note that "on" requires dynamic timber plantations (s32_hvarea=2 and s35_hvarea=2) for actual results.
    cfg$gms$s73_foresight <- 1 # * 1 = forward looking. Model sees future demand for establishment in current step
    cfg$gms$c73_wood_scen <- "default"
    #cfg$gms$c73_build_demand <- "10pc"
    
    
    # IPR settings
    cfg$gms$s58_rewetting_switch <- "Inf" 
    cfg$gms$c70_cereal_scp_scen <- "lin_99-98-90pc_20_50-60-100"
    
    
  }
  
  ### now const2030
  
  if(scen == "LCFS_const2020") {
    
    
    #1. Physical risks
    
    cfg$gms$c42_watdem_scenario <- "nocc"
    cfg$gms$c43_watavail_scenario <- "nocc"
    cfg$gms$c14_yields_scenario <- "nocc"
    cfg$gms$c52_carbon_scenario <- "nocc"
    cfg$gms$c59_som_scenario <- "nocc"
    
    #2. Diets
    
    cfg$gms$c15_exo_foodscen <- "bespoke"
    cfg$gms$s15_exo_diet <- 1
    
    cfg$gms$c15_kcal_scen <- "endogenous"
    cfg$gms$c15_EAT_scen <- "bau_AP_3pc" #  nature_tech
    
    #3.a Other policies
    
    cfg$gms$c32_aff_policy <- "ndc"
    cfg$gms$c35_ad_policy <- "ndc"
    cfg$gms$c35_aolc_policy <- "ndc"
    
    
    #3.b Protected areas
    
    cfg$gms$c22_protect_scenario <- "BH"			# def = None
    cfg$gms$c22_protect_scenario_noselect <- "none"     # def = None
    
    cfg$gms$policy_countries22  <- "ALA,AUS,AUT,BEL,BGR,CAN,CHN,CYP,EST,ESP,GBR,
                               FRA,FRO,GGY,HUN,GIB,GRC,HRV,IMN,
                               IRL,JEY,LTU,MLT,NLD,POL,PRT,ROU,
                               AND,ISL,LIE,MCO,SJM,SMR,VAT,ALB,
                               BIH,MKD,MNE,SRB,TUR,GRL,HKG,TWN,
                               CZE,DEU,DNK,ITA,LUX,LVA,SVK,SVN,
                               SWE,SWZ,JPN,KOR,FIN,NOR,USA,NZL,
                               PRK,SPM"
    
    cfg$gms$s22_restore_land <- 1
    
    cfg$gms$s22_conservation_start <- 2025       # def = 2020
    cfg$gms$s22_conservation_target <- 2035       # def = 2030
    
    cfg$gms$s22_exogenous_restoration_targets <- 0			 # def = 0
    cfg$gms$c22_restoration_scenario <- "none"				 # def = "none"
    
    #4. GHG prices
    
    cfg$gms$c56_pollutant_prices <- "fps_developed"
    cfg$gms$c56_pollutant_prices_noselect <- "fps_developing"
    cfg$gms$s56_ghgprice_start <- 2025
    
    cfg$gms$policy_countries56 <- "ALA,AUS,AUT,BEL,BGR,CAN,CHN,CYP,EST,ESP,GBR,
                               FRA,FRO,GGY,HUN,GIB,GRC,HRV,IMN,
                               IRL,JEY,LTU,MLT,NLD,POL,PRT,ROU,
                               AND,ISL,LIE,MCO,SJM,SMR,VAT,ALB,
                               BIH,MKD,MNE,SRB,TUR,GRL,HKG,TWN,
                               CZE,DEU,DNK,ITA,LUX,LVA,SVK,SVN,
                               SWE,SWZ,JPN,KOR,FIN,NOR,USA,NZL,
                               PRK,SPM"
    
    #5. Bioenergy demand
    
    cfg$gms$c60_2ndgen_biodem <- "fps_base"
    cfg$gms$c60_1stgen_biodem <- "const2020"
    
    
    #6. SNUpE
    
    cfg$gms$maccs  <- "on_sep16"                     # def = on_sep16
    cfg$gms$c57_macc_version <- "PBL_2019"
    cfg$gms$nitrogen    <- "ipcc2006_sep16"                 # def = ipcc2006_sep16
    cfg$gms$c50_scen_neff <- "neff65_70_starty1990"   # def = neff60_60_starty2010
    cfg$gms$c50_scen_neff_pasture <- "constant"   # def = constant
    
    #7. Yields
    
    cfg$gms$c13_tccost <- "medium"		# def = medium
    
    #8. Food waste
    
    cfg$gms$s15_exo_waste <- 1               # def = 0
    cfg$gms$s15_waste_scen <- 1.2          # def = 1.2
    cfg$gms$c15_exo_wastescen <- "bespoke_waste"
    
    
    # 9.Timber
    
    cfg$gms$s32_initial_distribution <- 3 # * 3= Poulter distribution - age-classes in timber plantations are initialized based on rotation length and can change dynamically over time.
    cfg$gms$s32_hvarea <- 2 # * 2 = "Endogenous" scenario. Harvest from plantations including age-class shifting. All plantations are harvested at rotation age. Plantation establishment is endogenous.
    cfg$gms$s35_secdf_distribution <- 2 # * (2): Distribution of secondary forest according to Poulter et al 2018 based on MODIS satellite data
    cfg$gms$s35_hvarea <- 2 # * 2 = Timber production from natveg including age-class shifting
    cfg$gms$s73_timber_demand_switch <- 1 # * 1=on Note that "on" requires dynamic timber plantations (s32_hvarea=2 and s35_hvarea=2) for actual results.
    cfg$gms$s73_foresight <- 1 # * 1 = forward looking. Model sees future demand for establishment in current step
    cfg$gms$c73_wood_scen <- "default"
    #cfg$gms$c73_build_demand <- "10pc"
    
    
    # IPR settings
    cfg$gms$s58_rewetting_switch <- "Inf" 
    cfg$gms$c70_cereal_scp_scen <- "lin_99-98-90pc_20_50-60-100"
    
    
  }
  
  
  start_run(cfg)
  
}