*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$setglobal c62_textile_demand  CE
* options default, decrease, baseline
;

table f62_demand_modifier(t_all,scen_62_textile)  Textile demand modifier (1)
$ondelim
$include "./modules/62_material/input/f62_demand_modifier.csv"
$offdelim;

table f62_dem_material(t_all,i,kall)  Historical material demand (mio. tDM)
$ondelim
$include "./modules/62_material/input/f62_dem_material.cs3"
$offdelim;
