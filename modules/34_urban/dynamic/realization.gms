*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

*' @description In the dynamic realization, urban land expands based on population growth.
*' Carbon stocks are fixed to zero because
*' information on urban land carbon density is missing.

*' @limitations Carbon stocks are assumed zero.

*####################### R SECTION START (PHASES) ##############################
$Ifi "%phase%" == "declarations" $include "./modules/34_urban/dynamic/declarations.gms"
$Ifi "%phase%" == "input" $include "./modules/34_urban/dynamic/input.gms"
$Ifi "%phase%" == "equations" $include "./modules/34_urban/dynamic/equations.gms"
$Ifi "%phase%" == "preloop" $include "./modules/34_urban/dynamic/preloop.gms"
$Ifi "%phase%" == "presolve" $include "./modules/34_urban/dynamic/presolve.gms"
$Ifi "%phase%" == "postsolve" $include "./modules/34_urban/dynamic/postsolve.gms"
*######################## R SECTION END (PHASES) ###############################
