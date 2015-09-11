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
static const char *ng0 = "D:/Designs/DCSE/FPGA Prototyping/Tema4/tb_sq_wave_gen.vhd";
extern char *IEEE_P_2592010699;

unsigned char p_2592010699_sub_1258338084_2592010699(char *, char *, unsigned int , unsigned int );


static void work_a_2687717264_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1484U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1844);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 976U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1400);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1844);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 40U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 976U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1400);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2687717264_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    int t10;
    int t11;
    int t12;
    int64 t13;
    int64 t14;

LAB0:    t1 = (t0 + 1612U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 3132);
    t4 = (t0 + 1880);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 3136);
    t4 = (t0 + 1880);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(86, ng0);

LAB6:    t2 = (t0 + 1792);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 1792);
    *((int *)t4) = 0;
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 3140);
    t4 = (t0 + 1880);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 3144);
    t4 = (t0 + 1916);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3148);
    *((int *)t2) = 1;
    t3 = (t0 + 3152);
    *((int *)t3) = 10;
    t10 = 1;
    t11 = 10;

LAB8:    if (t10 <= t11)
        goto LAB9;

LAB11:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 3156);
    t4 = (t0 + 1880);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3160);
    t4 = (t0 + 1916);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 976U);
    t3 = *((char **)t2);
    t13 = *((int64 *)t3);
    t14 = (t13 * 10);
    t2 = (t0 + 1528);
    xsi_process_wait(t2, t14);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB5:    t3 = (t0 + 528U);
    t9 = p_2592010699_sub_1258338084_2592010699(IEEE_P_2592010699, t3, 0U, 0U);
    if (t9 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(90, ng0);

LAB14:    t4 = (t0 + 1800);
    *((int *)t4) = 1;
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB10:    t2 = (t0 + 3148);
    t10 = *((int *)t2);
    t3 = (t0 + 3152);
    t11 = *((int *)t3);
    t12 = (t10 + 1);
    t10 = t12;
    t4 = (t0 + 3148);
    *((int *)t4) = t10;
    goto LAB8;

LAB12:    t6 = (t0 + 1800);
    *((int *)t6) = 0;
    goto LAB10;

LAB13:    t5 = (t0 + 528U);
    t9 = p_2592010699_sub_1258338084_2592010699(IEEE_P_2592010699, t5, 0U, 0U);
    if (t9 == 1)
        goto LAB12;
    else
        goto LAB14;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(99, ng0);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

}


extern void work_a_2687717264_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2687717264_2372691052_p_0,(void *)work_a_2687717264_2372691052_p_1};
	xsi_register_didat("work_a_2687717264_2372691052", "isim/_tmp/work/a_2687717264_2372691052.didat");
	xsi_register_executes(pe);
}
