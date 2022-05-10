*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

sets

deposition_source51 Source of atmospheric deposition
/ agricultural_magpie, other_exogenous /

scen_neff50 Scenario for uptake efficiency
/ constant,neff_ZhangBy2030_start2010,neff_ZhangBy2050_start2010,
neff55_55_starty1990,neff60_60_starty1990,neff65_70_starty1990,
neff65_70_starty2010,neff60_60_starty2010,neff55_60_starty2010,
neff70_75_starty2010,neff75_80_starty2010,neff80_85_starty2010,
neff75_85_starty2010,neff85_85_starty2010 /

dep_scen50 Scenario for atmospheric deposition
/history/

*** MB: APR 28, 2022. Adding a set of fertilizer price scenario trajectories
*** MB: APR 28, 2022. The logic here is that "f" stands for fertilizer and the number suffix designates the 2050 fertilizer price
***                   as a percentage of the MAgPIE default $600/t value, e.g. f110 = 110% of $600. The 2050 prices are interpolated
***                   and applied linearly starting in 2025.
*** MB: MAY 10, 2022. An improvement of the code could be to let the user freely choose any price, 2050 or otherwise. Let's re-visit
***                   when we've done further work on the organic N fertilizer options and applying a price for those.
fert_scen50 Scenario for fertilizer price trajectory
/ f0, f10, f20, f30, f40, f50, f60, f70, f80, f90, f100, f110, f120, f130, f140, f150, f160, f170, f180, f190, f200 /

;
