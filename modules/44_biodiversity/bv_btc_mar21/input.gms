*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

scalars

s44_regen_ag     Turn regenerative ag BII coefficients for cropland and pastureland on      (1)      / 1 /
*                                      1: on
*                                      0: off

$setglobal c44_price_bv_loss  p0

$setglobal c44_forestry_intensities  off
*   options:   off, minimal, intense


table fm_bii_coeff(bii_class44,t_all, bii_intensities, potnatveg) bii coeff (unitless)
$ondelim
$include "./modules/44_biodiversity/bv_btc_mar21/input/f44_bii_coeff.cs3"
$offdelim
;

table f44_price_bv_loss(t_all,price_biodiv44) price biodiv loss (USD per ha of biodiversity value loss)
$ondelim
$include "./modules/44_biodiversity/bv_btc_mar21/input/f44_price_biodiv_loss.csv"
$offdelim
;

parameters
f44_rr_layer(j) range rarity layer (unitless)
/
$ondelim
$include "./modules/44_biodiversity/bv_btc_mar21/input/rr_layer.cs2"
$offdelim
/
