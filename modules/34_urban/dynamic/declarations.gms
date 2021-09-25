*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de


equations
 q34_urban(i)       		              urban land (mio. ha)
 q34_cost(i)
;

parameters
 p34_pop_growth(t_all,i) growth rate (1)
 pc34_adjustment_cost(j)
 p34_densification new parameter to change over time
;

variables
vm_cost_urban(i)
;

*#################### R SECTION START (OUTPUT DECLARATIONS) ####################
parameters
 ov_cost_urban(t,i,type) 
 oq34_urban(t,i,type)    urban land (mio. ha)
 oq34_cost(t,i,type)     
;
*##################### R SECTION END (OUTPUT DECLARATIONS) #####################

