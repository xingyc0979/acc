# 1 "/home/sd/ACC_v09/ACC/src/XARITH.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "/home/sd/ACC_v09/ACC/src/XARITH.c"
# 25 "/home/sd/ACC_v09/ACC/src/XARITH.c"
get_UNDEF_int (C)
   long *C;
{
   *C= -4711;
   return 1;
}

is_equal (C1, C2)
   long C1;
   long C2;
{
   return(C1==C2);
}

test_UNDEF_int (C)
   long C;
{
   return(C== -4711);
}

test_two (S)
   long S;
{
   return(S==2);
}

test_one (S)
   long S;
{
   return(S==1);
}

test_greater_two (S)
   long S;
{
   return(S>2);
}

max (S1, S2, Max)
   long S1;
   long S2;
   long *Max;
{
   if (S1>=S2)
      *Max=S1;
    else
      *Max=S2;
    return 1;
}

make_at_least_four (Size1, Size)
   long Size1;
   long *Size;
{
if (Size1<4) *Size=4;
 else *Size=Size1;

}

make_even (S1, S2)
   long S1;
   long *S2;

{

if ((S1 % 2)!= 0)
   *S2=S1+1;
 else
    *S2=S1;
 return 1;

}

c_and (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1&C2;
   return 1;
}

c_or (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1|C2;
   return 1;
}

c_xor (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1^C2;
}

c_eq (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1==C2;
}

c_ne (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1!=C2;
}

c_lt (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1<C2;
}

c_gt (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1>C2;
}

c_ge (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1>=C2;
}

c_le (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1<=C2;
}

c_lshift (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1<<C2;
}

c_rshift (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1>>C2;
}

c_minus (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1-C2;
}

c_plus (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1+C2;
}

c_mult (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1*C2;
}

c_div (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1/C2;
}

c_mod (C1, C2, C3)
   long C1;
   long C2;
   long *C3;
{
   *C3=C1%C2;
}

c_unsigned (C1, C2)
   long C1;
   long *C2;
{
   *C2=(unsigned long) C1;
}

c_unminus (C1, C2)
   long C1;
   long *C2;
{
   *C2=(-C1);
}

c_not (C1, C2)
   long C1;
   long *C2;
{
   *C2=(!C1);
}

c_complement (C1, C2)
   long C1;
   long *C2;
{
   *C2=(~C1);
}
