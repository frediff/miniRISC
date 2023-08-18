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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static unsigned int ng0[] = {0U, 0U};



static void Cont_28_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;

LAB0:    t1 = (t0 + 2336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    t2 = ((char*)((ng0)));
    t3 = (t0 + 2720);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memset(t7, 0, 8);
    t8 = 1U;
    t9 = t8;
    t10 = (t2 + 4);
    t11 = *((unsigned int *)t2);
    t8 = (t8 & t11);
    t12 = *((unsigned int *)t10);
    t9 = (t9 & t12);
    t13 = (t7 + 4);
    t14 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t14 | t8);
    t15 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t15 | t9);
    xsi_driver_vfirst_trans(t3, 0, 0);

LAB1:    return;
}


extern void simprims_ver_m_06621322055533463077_0818475687_3132872193_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3132872193", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3132872193.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1731006340_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1731006340", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1731006340.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3672597322_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3672597322", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3672597322.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_0124893903_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_0124893903", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_0124893903.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2046999703_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2046999703", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2046999703.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2811520274_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2811520274", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2811520274.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_0442370524_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_0442370524", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_0442370524.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3351826521_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3351826521", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3351826521.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3770156396_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3770156396", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3770156396.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1026481385_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1026481385", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1026481385.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_0555653742_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_0555653742", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_0555653742.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_4236788715_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_4236788715", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_4236788715.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1094856485_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1094856485", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1094856485.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2631202464_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2631202464", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2631202464.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3785879800_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3785879800", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3785879800.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1009854845_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1009854845", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1009854845.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3806820001_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3806820001", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3806820001.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1064415012_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1064415012", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1064415012.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_0402749969_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_0402749969", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_0402749969.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3315049364_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3315049364", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3315049364.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3651659027_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3651659027", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3651659027.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_0070335638_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_0070335638", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_0070335638.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3120255064_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3120255064", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3120255064.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1684900317_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1684900317", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1684900317.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_0421433221_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_0421433221", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_0421433221.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_3297269248_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_3297269248", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_3297269248.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2034383566_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2034383566", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2034383566.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2765415243_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2765415243", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2765415243.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2208577150_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2208577150", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2208577150.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1580396539_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1580396539", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1580396539.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_2906590364_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_2906590364", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_2906590364.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_1890178329_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687_1890178329", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687_1890178329.didat");
	xsi_register_executes(pe);
}

extern void simprims_ver_m_06621322055533463077_0818475687_init()
{
	static char *pe[] = {(void *)Cont_28_0};
	xsi_register_didat("simprims_ver_m_06621322055533463077_0818475687", "isim/test_computer_isim_par.exe.sim/simprims_ver/m_06621322055533463077_0818475687.didat");
	xsi_register_executes(pe);
}
