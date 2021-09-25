*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de


loop(t_all$(ord(t_all) > 1),
 p34_pop_growth(t_all,i) = im_pop(t_all,i)/im_pop(t_all-1,i);
);

vm_carbon_stock.fx(j,"urban",c_pools) = 0;