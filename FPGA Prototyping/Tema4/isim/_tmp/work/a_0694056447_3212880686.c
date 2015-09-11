/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Designs/DCSE/FPGA Prototyping/Tema4/Square_wave_gen.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

unsigned char ieee_std_logic_arith_equal_unsigned_unsigned(char *, char *, char *, char *, char *);
unsigned char p_2592010699_sub_1690584930_2592010699(char *, unsigned char );
char *p_3499444699_sub_1492922471_3499444699(char *, char *, char *, char *, int );
unsigned char p_3499444699_sub_1829939900_3499444699(char *, char *, char *, int );


static void work_a_0694056447_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 528U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3136);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t4 = (t0 + 988U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 3228);
    t10 = (t4 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1164U);
    t4 = *((char **)t2);
    t2 = (t0 + 3264);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 3U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1340U);
    t4 = *((char **)t2);
    t2 = (t0 + 3300);
    t5 = (t2 + 32U);
    t8 = *((char **)t5);
    t10 = (t8 + 40U);
    t11 = *((char **)t10);
    memcpy(t11, t4, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 548U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_0694056447_3212880686_p_1(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1076U);
    t2 = *((char **)t1);
    t1 = (t0 + 4760U);
    t3 = (t0 + 1680U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = p_3499444699_sub_1829939900_3499444699(IEEE_P_3499444699, t2, t1, t5);
    if (t6 != 0)
        goto LAB3;

LAB4:
LAB5:    t14 = (t0 + 1076U);
    t15 = *((char **)t14);
    t14 = (t0 + 4760U);
    t16 = p_3499444699_sub_1492922471_3499444699(IEEE_P_3499444699, t13, t15, t14, 1);
    t17 = (t0 + 3336);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 3U);
    xsi_driver_first_trans_fast(t17);

LAB2:    t22 = (t0 + 3144);
    *((int *)t22) = 1;

LAB1:    return;
LAB3:    t3 = xsi_get_transient_memory(3U);
    memset(t3, 0, 3U);
    t7 = t3;
    memset(t7, (unsigned char)2, 3U);
    t8 = (t0 + 3336);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 3U);
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0694056447_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1076U);
    t2 = *((char **)t1);
    t1 = (t0 + 4760U);
    t3 = (t0 + 1680U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = p_3499444699_sub_1829939900_3499444699(IEEE_P_3499444699, t2, t1, t5);
    if (t6 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 3372);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    *((unsigned char *)t15) = (unsigned char)2;
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3152);
    *((int *)t16) = 1;

LAB1:    return;
LAB3:    t3 = (t0 + 3372);
    t7 = (t3 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB6:    goto LAB2;

}

static void work_a_0694056447_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    static char *nl0[] = {&&LAB6, &&LAB6, &&LAB6, &&LAB5, &&LAB6, &&LAB6, &&LAB6, &&LAB6, &&LAB6};

LAB0:    t1 = (t0 + 2572U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 900U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(63, ng0);

LAB9:    t2 = (t0 + 3160);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB10;

LAB1:    return;
LAB5:    xsi_set_current_line(65, ng0);
    t5 = (t0 + 636U);
    t6 = *((char **)t5);
    t5 = (t0 + 3408);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB4;

LAB6:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 724U);
    t3 = *((char **)t2);
    t2 = (t0 + 3408);
    t5 = (t2 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB4;

LAB7:    t3 = (t0 + 3160);
    *((int *)t3) = 0;
    goto LAB2;

LAB8:    goto LAB7;

LAB10:    goto LAB8;

}

static void work_a_0694056447_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    unsigned char t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1252U);
    t3 = *((char **)t2);
    t2 = (t0 + 4776U);
    t4 = (t0 + 1428U);
    t5 = *((char **)t4);
    t4 = (t0 + 4792U);
    t6 = ieee_std_logic_arith_equal_unsigned_unsigned(IEEE_P_3499444699, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t18 = (t0 + 900U);
    t19 = *((char **)t18);
    t20 = *((unsigned char *)t19);
    t18 = (t0 + 3444);
    t21 = (t18 + 32U);
    t22 = *((char **)t21);
    t23 = (t22 + 40U);
    t24 = *((char **)t23);
    *((unsigned char *)t24) = t20;
    xsi_driver_first_trans_fast(t18);

LAB2:    t25 = (t0 + 3168);
    *((int *)t25) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 900U);
    t11 = *((char **)t7);
    t12 = *((unsigned char *)t11);
    t13 = p_2592010699_sub_1690584930_2592010699(IEEE_P_2592010699, t12);
    t7 = (t0 + 3444);
    t14 = (t7 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = t13;
    xsi_driver_first_trans_fast(t7);
    goto LAB2;

LAB5:    t7 = (t0 + 1516U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t1 = t10;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0694056447_3212880686_p_5(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1252U);
    t3 = *((char **)t2);
    t2 = (t0 + 4776U);
    t4 = (t0 + 1428U);
    t5 = *((char **)t4);
    t4 = (t0 + 4792U);
    t6 = ieee_std_logic_arith_equal_unsigned_unsigned(IEEE_P_3499444699, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t18 = (t0 + 1252U);
    t19 = *((char **)t18);
    t18 = (t0 + 4776U);
    t20 = p_3499444699_sub_1492922471_3499444699(IEEE_P_3499444699, t17, t19, t18, 1);
    t21 = (t0 + 3480);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 40U);
    t25 = *((char **)t24);
    memcpy(t25, t20, 4U);
    xsi_driver_first_trans_fast(t21);

LAB2:    t26 = (t0 + 3176);
    *((int *)t26) = 1;

LAB1:    return;
LAB3:    t7 = xsi_get_transient_memory(4U);
    memset(t7, 0, 4U);
    t11 = t7;
    memset(t11, (unsigned char)2, 4U);
    t12 = (t0 + 3480);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t12);
    goto LAB2;

LAB5:    t7 = (t0 + 1516U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    t1 = t10;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_0694056447_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 900U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 3516);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 3184);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0694056447_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0694056447_3212880686_p_0,(void *)work_a_0694056447_3212880686_p_1,(void *)work_a_0694056447_3212880686_p_2,(void *)work_a_0694056447_3212880686_p_3,(void *)work_a_0694056447_3212880686_p_4,(void *)work_a_0694056447_3212880686_p_5,(void *)work_a_0694056447_3212880686_p_6};
	xsi_register_didat("work_a_0694056447_3212880686", "isim/_tmp/work/a_0694056447_3212880686.didat");
	xsi_register_executes(pe);
}
