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
extern char *STD_STANDARD;
extern char *IEEE_P_1242562249;
static const char *ng2 = "C:/Users/noluc/Documents/Xilinx ISE Projects/BinaryCalculator/DisplayDriver.vhd";
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);


void work_a_2227152023_3212880686_sub_547330989_136832747(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, unsigned int t6, unsigned int t7, char *t8)
{
    char t9[128];
    char t11[16];
    char t16[16];
    char t21[8];
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    int t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;

LAB0:    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 7;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 7);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t13 = (t16 + 0U);
    t17 = (t13 + 0U);
    *((int *)t17) = 7;
    t17 = (t13 + 4U);
    *((int *)t17) = 0;
    t17 = (t13 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 7);
    t15 = (t18 * -1);
    t15 = (t15 + 1);
    t17 = (t13 + 12U);
    *((unsigned int *)t17) = t15;
    t17 = (t9 + 4U);
    t19 = ((STD_STANDARD) + 384);
    t20 = (t17 + 88U);
    *((char **)t20) = t19;
    t22 = (t17 + 56U);
    *((char **)t22) = t21;
    xsi_type_set_default_value(t19, t21, 0);
    t23 = (t17 + 80U);
    *((unsigned int *)t23) = 4U;
    t24 = (t2 + 40U);
    t25 = *((char **)t24);
    t24 = (t25 + t4);
    t26 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t24, t11);
    t25 = (t17 + 56U);
    t27 = *((char **)t25);
    t25 = (t27 + 0);
    *((int *)t25) = t26;
    t12 = (t17 + 56U);
    t13 = *((char **)t12);
    t14 = *((int *)t13);
    if (t14 == 0)
        goto LAB3;

LAB14:    if (t14 == 1)
        goto LAB4;

LAB15:    if (t14 == 2)
        goto LAB5;

LAB16:    if (t14 == 3)
        goto LAB6;

LAB17:    if (t14 == 4)
        goto LAB7;

LAB18:    if (t14 == 5)
        goto LAB8;

LAB19:    if (t14 == 6)
        goto LAB9;

LAB20:    if (t14 == 7)
        goto LAB10;

LAB21:    if (t14 == 8)
        goto LAB11;

LAB22:    if (t14 == 9)
        goto LAB12;

LAB23:
LAB13:    t12 = (t0 + 6128);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);

LAB2:
LAB1:    return;
LAB3:    t12 = (t0 + 6048);
    t15 = (0 + t6);
    t20 = (t8 + 56U);
    t22 = *((char **)t20);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    t25 = (t16 + 12U);
    t28 = *((unsigned int *)t25);
    t28 = (t28 * 1U);
    memcpy(t24, t12, t28);
    t27 = (t16 + 12U);
    t29 = *((unsigned int *)t27);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB4:    t12 = (t0 + 6056);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB5:    t12 = (t0 + 6064);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB6:    t12 = (t0 + 6072);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB7:    t12 = (t0 + 6080);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB8:    t12 = (t0 + 6088);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB9:    t12 = (t0 + 6096);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB10:    t12 = (t0 + 6104);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB11:    t12 = (t0 + 6112);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB12:    t12 = (t0 + 6120);
    t15 = (0 + t6);
    t19 = (t8 + 56U);
    t20 = *((char **)t19);
    t22 = (t20 + 56U);
    t23 = *((char **)t22);
    t24 = (t16 + 12U);
    t28 = *((unsigned int *)t24);
    t28 = (t28 * 1U);
    memcpy(t23, t12, t28);
    t25 = (t16 + 12U);
    t29 = *((unsigned int *)t25);
    t30 = (1U * t29);
    xsi_driver_first_trans_delta(t8, t15, t30, 0LL);
    goto LAB2;

LAB24:;
}

static void work_a_2227152023_3212880686_p_0(char *t0)
{
    char t6[16];
    char t8[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    char *t7;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    char *t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(60, ng2);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 3472);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng2);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    if (t5 == 100)
        goto LAB6;

LAB13:    if (t5 == 105)
        goto LAB7;

LAB14:    if (t5 == 200)
        goto LAB8;

LAB15:    if (t5 == 205)
        goto LAB9;

LAB16:    if (t5 == 300)
        goto LAB10;

LAB17:    if (t5 == 305)
        goto LAB11;

LAB18:
LAB12:    xsi_set_current_line(93, ng2);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(63, ng2);
    t3 = (t0 + 6136);
    t9 = (t8 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 2;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t11 = (2 - 0);
    t12 = (t11 * 1);
    t12 = (t12 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t12;
    t10 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t6, t3, t8);
    t13 = (t6 + 12U);
    t12 = *((unsigned int *)t13);
    t14 = (1U * t12);
    t15 = (3U != t14);
    if (t15 == 1)
        goto LAB20;

LAB21:    t16 = (t0 + 3600);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 3U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(65, ng2);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB7:    xsi_set_current_line(68, ng2);
    t1 = (t0 + 2960);
    t3 = (t0 + 1152U);
    t4 = (t0 + 1632U);
    t7 = (t0 + 3728);
    work_a_2227152023_3212880686_sub_547330989_136832747(t0, t1, t3, 0U, 0U, t4, 0U, 0U, t7);
    xsi_set_current_line(70, ng2);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(73, ng2);
    t1 = (t0 + 6139);
    t4 = (t8 + 0U);
    t7 = (t4 + 0U);
    *((int *)t7) = 0;
    t7 = (t4 + 4U);
    *((int *)t7) = 2;
    t7 = (t4 + 8U);
    *((int *)t7) = 1;
    t5 = (2 - 0);
    t12 = (t5 * 1);
    t12 = (t12 + 1);
    t7 = (t4 + 12U);
    *((unsigned int *)t7) = t12;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t6, t1, t8);
    t9 = (t6 + 12U);
    t12 = *((unsigned int *)t9);
    t14 = (1U * t12);
    t2 = (3U != t14);
    if (t2 == 1)
        goto LAB22;

LAB23:    t10 = (t0 + 3600);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 3U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(75, ng2);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB9:    xsi_set_current_line(78, ng2);
    t1 = (t0 + 2960);
    t3 = (t0 + 1312U);
    t4 = (t0 + 1632U);
    t7 = (t0 + 3728);
    work_a_2227152023_3212880686_sub_547330989_136832747(t0, t1, t3, 0U, 0U, t4, 0U, 0U, t7);
    xsi_set_current_line(80, ng2);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB10:    xsi_set_current_line(83, ng2);
    t1 = (t0 + 6142);
    t4 = (t8 + 0U);
    t7 = (t4 + 0U);
    *((int *)t7) = 0;
    t7 = (t4 + 4U);
    *((int *)t7) = 2;
    t7 = (t4 + 8U);
    *((int *)t7) = 1;
    t5 = (2 - 0);
    t12 = (t5 * 1);
    t12 = (t12 + 1);
    t7 = (t4 + 12U);
    *((unsigned int *)t7) = t12;
    t7 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t6, t1, t8);
    t9 = (t6 + 12U);
    t12 = *((unsigned int *)t9);
    t14 = (1U * t12);
    t2 = (3U != t14);
    if (t2 == 1)
        goto LAB24;

LAB25:    t10 = (t0 + 3600);
    t13 = (t10 + 56U);
    t16 = *((char **)t13);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 3U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(85, ng2);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t11 = (t5 + 1);
    t1 = (t0 + 3664);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t11;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB11:    xsi_set_current_line(88, ng2);
    t1 = (t0 + 2960);
    t3 = (t0 + 1472U);
    t4 = (t0 + 1632U);
    t7 = (t0 + 3728);
    work_a_2227152023_3212880686_sub_547330989_136832747(t0, t1, t3, 0U, 0U, t4, 0U, 0U, t7);
    xsi_set_current_line(90, ng2);
    t1 = (t0 + 3664);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB19:;
LAB20:    xsi_size_not_matching(3U, t14, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(3U, t14, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(3U, t14, 0);
    goto LAB25;

}


extern void work_a_2227152023_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2227152023_3212880686_p_0};
	static char *se[] = {(void *)work_a_2227152023_3212880686_sub_547330989_136832747};
	xsi_register_didat("work_a_2227152023_3212880686", "isim/TestReadDipSwitches_isim_beh.exe.sim/work/a_2227152023_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
