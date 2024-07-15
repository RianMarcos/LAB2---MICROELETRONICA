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
static const char *ng0 = "C:/Users/Rian/Documents/MICROELETRONICA/LAB2/ORDENADOR_BINARIO/ORDENADOR_BINARIO_TB.vhd";



static void work_a_0349274726_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int64 t17;
    char *t18;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    int64 t25;
    char *t26;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    int64 t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    int64 t41;
    char *t42;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    int64 t49;
    char *t50;
    char *t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    int64 t57;
    char *t58;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    xsi_set_current_line(30, ng0);

LAB3:    t1 = (100 * 1000LL);
    t2 = (t0 + 4660);
    t4 = (t0 + 2736);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, t1);
    t9 = (200 * 1000LL);
    t10 = (t0 + 4668);
    t12 = (t0 + 2736);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t10, 8U);
    xsi_driver_subsequent_trans_delta(t12, 0U, 8U, t9);
    t17 = (300 * 1000LL);
    t18 = (t0 + 4676);
    t20 = (t0 + 2736);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t18, 8U);
    xsi_driver_subsequent_trans_delta(t20, 0U, 8U, t17);
    t25 = (400 * 1000LL);
    t26 = (t0 + 4684);
    t28 = (t0 + 2736);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    t31 = (t30 + 56U);
    t32 = *((char **)t31);
    memcpy(t32, t26, 8U);
    xsi_driver_subsequent_trans_delta(t28, 0U, 8U, t25);
    t33 = (500 * 1000LL);
    t34 = (t0 + 4692);
    t36 = (t0 + 2736);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t34, 8U);
    xsi_driver_subsequent_trans_delta(t36, 0U, 8U, t33);
    t41 = (600 * 1000LL);
    t42 = (t0 + 4700);
    t44 = (t0 + 2736);
    t45 = (t44 + 56U);
    t46 = *((char **)t45);
    t47 = (t46 + 56U);
    t48 = *((char **)t47);
    memcpy(t48, t42, 8U);
    xsi_driver_subsequent_trans_delta(t44, 0U, 8U, t41);
    t49 = (700 * 1000LL);
    t50 = (t0 + 4708);
    t52 = (t0 + 2736);
    t53 = (t52 + 56U);
    t54 = *((char **)t53);
    t55 = (t54 + 56U);
    t56 = *((char **)t55);
    memcpy(t56, t50, 8U);
    xsi_driver_subsequent_trans_delta(t52, 0U, 8U, t49);
    t57 = (800 * 1000LL);
    t58 = (t0 + 4716);
    t60 = (t0 + 2736);
    t61 = (t60 + 56U);
    t62 = *((char **)t61);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    memcpy(t64, t58, 8U);
    xsi_driver_subsequent_trans_delta(t60, 0U, 8U, t57);
    t65 = (t0 + 2736);
    xsi_driver_intertial_reject(t65, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0349274726_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0349274726_2372691052_p_0};
	xsi_register_didat("work_a_0349274726_2372691052", "isim/ORDENADOR_BINARIO_TB_isim_beh.exe.sim/work/a_0349274726_2372691052.didat");
	xsi_register_executes(pe);
}
