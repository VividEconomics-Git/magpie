*** (C) 2008-2021 Potsdam Institute for Climate Impact Research (PIK),
*** authors, and contributors see AUTHORS file
*** This file is part of MAgPIE and licensed under GNU AGPL Version 3
*** or later. See LICENSE file or go to http://www.gnu.org/licenses/
*** Contact: magpie@pik-potsdam.de

*Try increasing BII value of cropland over time.
*Not including perennial crops and rangelands as it's not clear all
*regenerative ag interventions apply to them. Trying to come up with a
*conservative estimate.
*It seems like these new coefficients get saved in each timestep. So
*I have converted them so that they account for this (otherwise
*the BII coefficients grow exponentially).
if((s44_regen_ag = 1),
    if((m_year(t) <= sm_fix_SSP2),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg);
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg);
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg);
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg); 
    Elseif(m_year(t) <= 2025),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg) * 1.00159;
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg) * 1.0283;
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg) * 1.00333;
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg) * 1.013; 
    Elseif(m_year(t) <= 2030),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg) * 1.00159;
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg) * 1.0566;
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg) * 1.00333;
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg) * 1.027; 
    Elseif(m_year(t) <= 2035),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg) * 1.00318;
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg) * 1.0849;
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg) * 1.00666;
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg) * 1.04; 
    Elseif(m_year(t) <= 2040),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg) * 1.00475;
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg) * 1.1132;
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg) * 1.000999;
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg) * 1.053; 
    Elseif(m_year(t) <= 2045),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg) * 1.00788;
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg) * 1.1415;
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg) * 1.00166;
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg) * 1.067; 
    Elseif(m_year(t) > 2045),
        fm_bii_coeff("crop_ann",potnatveg) = fm_bii_coeff("crop_ann",potnatveg) * 1.0125;
*        fm_bii_coeff("crop_per",potnatveg) = fm_bii_coeff("crop_per",potnatveg) * 1.17;
        fm_bii_coeff("manpast",potnatveg) = fm_bii_coeff("manpast",potnatveg) * 1.00266;
*        fm_bii_coeff("rangeland",potnatveg) = fm_bii_coeff("rangeland",potnatveg) * 1.08;
        );
);
    
*** EOF pre.gms ***
