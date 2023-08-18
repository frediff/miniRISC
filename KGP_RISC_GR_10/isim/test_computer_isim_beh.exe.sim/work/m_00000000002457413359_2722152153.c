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
static const char *ng0 = "C:/Users/Student/Desktop/upsc_with_assembler/upsc/KGP_RISC_GR_10/THIRTY_TWO_BIT_COMPLEMENT.v";



static void Cont_22_0(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    t1 = (t0 + 2368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    memset(t3, 0, 8);
    xsi_vlog_signed_unary_minus(t3, 32, t4, 32);
    t2 = (t0 + 2768);
    t5 = (t2 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t9 = (t0 + 2688);
    *((int *)t9) = 1;

LAB1:    return;
}


extern void work_m_00000000002457413359_2722152153_init()
{
	static char *pe[] = {(void *)Cont_22_0};
	xsi_register_didat("work_m_00000000002457413359_2722152153", "isim/test_computer_isim_beh.exe.sim/work/m_00000000002457413359_2722152153.didat");
	xsi_register_executes(pe);
}
