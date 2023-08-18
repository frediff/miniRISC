/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003999923500_2156304407_init();
    work_m_00000000003999923500_2997942933_init();
    xilinxcorelib_ver_m_00000000001358910285_1549027279_init();
    xilinxcorelib_ver_m_00000000001687936702_0135474683_init();
    xilinxcorelib_ver_m_00000000002621774987_0699104152_init();
    xilinxcorelib_ver_m_00000000001603977570_3940936528_init();
    work_m_00000000003289761879_2098114829_init();
    work_m_00000000002438376089_4284950183_init();
    work_m_00000000003057512820_3016065818_init();
    work_m_00000000000423769323_2366709185_init();
    work_m_00000000002232128030_4146933165_init();
    work_m_00000000002438210576_2215371941_init();
    work_m_00000000002933461339_2928185460_init();
    work_m_00000000002590832729_2965254097_init();
    work_m_00000000002671989070_1558745502_init();
    work_m_00000000001984057343_1603223251_init();
    work_m_00000000000325919290_1218503556_init();
    work_m_00000000001108749385_1451103987_init();
    work_m_00000000002457413359_2722152153_init();
    work_m_00000000001062558466_2299552622_init();
    work_m_00000000001527202426_1999142785_init();
    work_m_00000000003506683189_2972454141_init();
    work_m_00000000000291213146_3523518613_init();
    work_m_00000000000291213146_1421177606_init();
    work_m_00000000000291213146_1007359992_init();
    work_m_00000000002878239832_4269149406_init();
    work_m_00000000001133683457_0625678155_init();
    work_m_00000000000839191287_1393068579_init();
    work_m_00000000003162142998_2976835008_init();
    work_m_00000000001403121349_2681923649_init();
    work_m_00000000003461657348_0665385546_init();
    work_m_00000000002691962692_3145925255_init();
    work_m_00000000000324520705_2141424140_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000324520705_2141424140");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
