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
static const char *ng0 = "/home/anindya/Desktop/Anubhav_coa_lab/upsc/KGP_RISC_GR_10/ADDER_L.v";
static unsigned int ng1[] = {0U, 0U};



static void Cont_23_0(char *t0)
{
    char t4[8];
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    t1 = (t0 + 2520U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    xsi_vlogtype_concat(t4, 32, 32, 2U, t2, 16, t5, 16);
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t3, 32, t4, 32);
    t7 = (t0 + 2920);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t6, 8);
    xsi_driver_vfirst_trans(t7, 0, 31);
    t12 = (t0 + 2840);
    *((int *)t12) = 1;

LAB1:    return;
}


extern void work_m_02694299888889491141_2681923649_init()
{
	static char *pe[] = {(void *)Cont_23_0};
	xsi_register_didat("work_m_02694299888889491141_2681923649", "isim/PROCESSOR_isim_beh.exe.sim/work/m_02694299888889491141_2681923649.didat");
	xsi_register_executes(pe);
}
