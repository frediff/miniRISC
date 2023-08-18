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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Student/Desktop/upsc_with_assembler/upsc/KGP_RISC_GR_10/ADDER_L.v";
static int ng1[] = {16, 0};



static void Cont_23_0(char *t0)
{
    char t4[8];
    char t6[8];
    char t9[8];
    char t17[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t7;
    char *t8;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    t1 = (t0 + 2528U);
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
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    t7 = (t9 + 4);
    t10 = (t8 + 4);
    t11 = *((unsigned int *)t8);
    t12 = (t11 >> 15);
    t13 = (t12 & 1);
    *((unsigned int *)t9) = t13;
    t14 = *((unsigned int *)t10);
    t15 = (t14 >> 15);
    t16 = (t15 & 1);
    *((unsigned int *)t7) = t16;
    xsi_vlog_mul_concat(t6, 16, 1, t2, 1U, t9, 1);
    xsi_vlogtype_concat(t4, 32, 32, 2U, t6, 16, t5, 16);
    memset(t17, 0, 8);
    xsi_vlog_unsigned_add(t17, 32, t3, 32, t4, 32);
    t18 = (t0 + 2928);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t17, 8);
    xsi_driver_vfirst_trans(t18, 0, 31);
    t23 = (t0 + 2848);
    *((int *)t23) = 1;

LAB1:    return;
}


extern void work_m_00000000001403121349_2681923649_init()
{
	static char *pe[] = {(void *)Cont_23_0};
	xsi_register_didat("work_m_00000000001403121349_2681923649", "isim/test_computer_isim_beh.exe.sim/work/m_00000000001403121349_2681923649.didat");
	xsi_register_executes(pe);
}
