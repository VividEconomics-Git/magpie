*** |  (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK)
*** |  authors, and contributors see CITATION.cff file. This file is part
*** |  of MAgPIE and licensed under AGPL-3.0-or-later. Under Section 7 of
*** |  AGPL-3.0, you are granted additional permissions described in the
*** |  MAgPIE License Exception, version 1.0 (see LICENSE file).
*** |  Contact: magpie@pik-potsdam.de

pc34_adjustment_cost(j) = (1/pcm_land(j,"urban"))$(pcm_land(j,"urban") >= 10e-4)
						+ (10000)$(pcm_land(j,"urban") < 10e-4);

*' Biodiveristy value (BV)
if(m_year(t) <= 2020,
        vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2020","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
        Elseif(m_year(t) = 2025),
            vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2025","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
        Elseif(m_year(t) = 2030),
            vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2030","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
        Elseif(m_year(t) = 2035),
            vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2035","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
        Elseif(m_year(t) = 2040),
            vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2040","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
        Elseif(m_year(t) = 2045),
            vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2045","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
        Elseif(m_year(t) > 2045),
            vm_bv.fx(j,"urban", potnatveg) = pcm_land(j,"urban") * fm_bii_coeff("urban","y2050","%c44_forestry_intensities%", potnatveg) * fm_luh2_side_layers(j,potnatveg);
    );
    
** Fade in densification switch
if(m_year(t) <= 2020,
        p34_densification = 1;
        Elseif(m_year(t) = 2025),
            p34_densification = (1 * 0.95 + s34_densification * 0.05);
        Elseif(m_year(t) = 2030),
            p34_densification = (1 * 0.85 + s34_densification * 0.15);
        Elseif(m_year(t) = 2035),
            p34_densification = (1 * 0.6 + s34_densification * 0.4);
        Elseif(m_year(t) = 2040),
            p34_densification = (1 * 0.4 + s34_densification * 0.6);
        Elseif(m_year(t) = 2045),
            p34_densification = (1 * 0.2 + s34_densification * 0.8);
        Elseif(m_year(t) > 2045),
            p34_densification = s34_densification;
    );