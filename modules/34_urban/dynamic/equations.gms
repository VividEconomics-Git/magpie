*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de


q34_cost(i2)..
 vm_cost_urban(i2) =e=
 sum(cell(i2,j2), (vm_land(j2,"urban") - pcm_land(j2,"urban")) * pc34_adjustment_cost(j2));

q34_urban(i2)..
 sum(cell(i2,j2), vm_land(j2,"urban")) =e= 
 sum(cell(i2,j2), pcm_land(j2,"urban")) * sum(ct, p34_pop_growth(ct,i2)) * p34_densification;