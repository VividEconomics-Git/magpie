*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

sets
  pol35 Land protection policy
  / none, npi, ndc /

  prot_type_all Conservation priority areas
  / BH, CPD, FF, LW, WDPA, HalfEarth, FF_BH, Forest, Forest_Other, PrimForest, SecdForest, Jung30, Jung40, Jung50, Jung20 /

  prot_type(prot_type_all) Conservation priority areas
  / BH, CPD, FF, LW, WDPA, HalfEarth, Jung30, Jung40, Jung50, Jung20 /

  pol_stock35 Land types for land protection policies
  / forest, other /

  driver_source Source of deforestation drivers
  / overall, deforestation, shifting_agriculture,
  forestry, wildfire, urbanization /

  combined_loss(driver_source) Combined loss from fire plus agriculture
  / shifting_agriculture,wildfire /

  prot_target35 Target year for nature protection
   / none, by2030, by2050, 20by30_40by50, 30by30_40by50, 30by30_50by50 /

;
