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
    xilinxcorelib_ver_m_04284627112054182733_1549027279_init();
    xilinxcorelib_ver_m_18166792875774041790_0135474683_init();
    xilinxcorelib_ver_m_17738287534884592592_3948108501_init();
    xilinxcorelib_ver_m_10066368518302646626_4101183842_init();
    work_m_16661267567223359575_2098114829_init();
    work_m_09657543265269230233_4284950183_init();
    work_m_13597030799018118723_1932041798_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_13597030799018118723_1932041798");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
