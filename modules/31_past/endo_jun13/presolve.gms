*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

if(m_year(t) <= 2020,
    p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2020","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2025),
        p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2025","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2030),
        p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2030","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2035),
        p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2035","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2040),
        p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2040","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) = 2045),
        p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2045","%c44_forestry_intensities%",potnatveg);
    Elseif(m_year(t) > 2045),
        p31_bii_coeff(bii_class44, potnatveg) = fm_bii_coeff(bii_class44,"y2045","%c44_forestry_intensities%",potnatveg);
);