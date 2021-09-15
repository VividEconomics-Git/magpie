*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

$ifthen "%c30_bioen_type%" == "all" bioen_type_30(kbe30) = yes;
$else bioen_type_30("%c30_bioen_type%") = yes;
$endif

$ifthen "%c30_bioen_water%" == "all" bioen_water_30(w) = yes;
$else bioen_water_30("%c30_bioen_water%") = yes;
$endif

*' @code
*' First, all 2nd generation bioenergy area is fixed to zero, irrespective of type and 
*' rainfed/irrigation.
vm_area.fx(j,kbe30,w)=0;
*' Second, the bounds for 2nd generation bioenergy area are released depending on 
*' the dynamic sets bioen_type_30 and bioen_water_30.
vm_area.up(j,bioen_type_30,bioen_water_30)=Inf;
*' @stop

crpmax30(crp30) = yes$(f30_rotation_max_shr(crp30) < 1);
crpmin30(crp30) = yes$(f30_rotation_min_shr(crp30) > 0);

if(m_year(t) <= 2020,
    p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2020","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2025),
        p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2025","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2030),
        p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2030","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2035),
        p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2035","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2040),
        p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2040","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2045),
        p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2045","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) > 2045),
        p30_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2045","%c44_forestry_intensities%",potnatveg);
);