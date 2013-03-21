declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1990.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1990 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1990.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh636:
  ret void
}


define i32 @program (i32 %argc1988, { i32, [ 0 x i8* ] }* %argv1986){

__fresh631:
  %argc_slot1989 = alloca i32
  store i32 %argc1988, i32* %argc_slot1989
  %argv_slot1987 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1986, { i32, [ 0 x i8* ] }** %argv_slot1987
  %strval1991 = load i8** @_oat_string1990
  %ret1992 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1991 )
  %arr1993 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1992, { i32, [ 0 x i32 ] }** %arr1993
  %sum1994 = alloca i32
  store i32 0, i32* %sum1994
  %i1995 = alloca i32
  store i32 0, i32* %i1995
  br label %__cond627

__cond627:
  %_lhs1996 = load i32* %i1995
  %bop1997 = icmp slt i32 %_lhs1996, 10
  br i1 %bop1997, label %__body626, label %__post625

__fresh632:
  br label %__body626

__body626:
  %_lhs1998 = load i32* %i1995
  %size_entry_ptr2000 = getelementptr { i32, [ 0 x i32 ] }* %arr1993, i32 0, i32 0
  %size2001 = load i32* %size_entry_ptr2000
  call void @oat_array_bounds_check( i32 %size2001, i32 %_lhs1998 )
  %index_ptr1999 = getelementptr { i32, [ 0 x i32 ] }* %arr1993, i32 0, i32 1, i32 %_lhs1998
  %_lhs2002 = load i32* %i1995
  store i32 %_lhs2002, i32* %index_ptr1999
  %_lhs2003 = load i32* %i1995
  %bop2004 = add i32 %_lhs2003, 1
  store i32 %bop2004, i32* %i1995
  br label %__cond627

__fresh633:
  br label %__post625

__post625:
  %i2005 = alloca i32
  store i32 0, i32* %i2005
  br label %__cond630

__cond630:
  %_lhs2006 = load i32* %i2005
  %bop2007 = icmp slt i32 %_lhs2006, 10
  br i1 %bop2007, label %__body629, label %__post628

__fresh634:
  br label %__body629

__body629:
  %_lhs2008 = load i32* %sum1994
  %_lhs2009 = load i32* %i2005
  %size_entry_ptr2011 = getelementptr { i32, [ 0 x i32 ] }* %arr1993, i32 0, i32 0
  %size2012 = load i32* %size_entry_ptr2011
  call void @oat_array_bounds_check( i32 %size2012, i32 %_lhs2009 )
  %index_ptr2010 = getelementptr { i32, [ 0 x i32 ] }* %arr1993, i32 0, i32 1, i32 %_lhs2009
  %_lhs2013 = load i32* %index_ptr2010
  %bop2014 = add i32 %_lhs2008, %_lhs2013
  store i32 %bop2014, i32* %sum1994
  %_lhs2015 = load i32* %i2005
  %bop2016 = add i32 %_lhs2015, 1
  store i32 %bop2016, i32* %i2005
  br label %__cond630

__fresh635:
  br label %__post628

__post628:
  %_lhs2017 = load i32* %sum1994
  ret i32 %_lhs2017
}


