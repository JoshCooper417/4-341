declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1679 = global i8* zeroinitializer, align 4		; initialized by str1679.init
@_oat_string1677.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1677 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1677.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh787:
  call void @str1679.init(  )
  ret void
}


define i32 @program (i32 %argc1683, { i32, [ 0 x i8* ] }* %argv1681){

__fresh784:
  %argc_slot1684 = alloca i32
  store i32 %argc1683, i32* %argc_slot1684
  %argv_slot1682 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1681, { i32, [ 0 x i8* ] }** %argv_slot1682
  %_lhs1685 = load i8** @str1679
  %ret1686 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1685 )
  %arr1687 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1686, { i32, [ 0 x i32 ] }** %arr1687
  %s1688 = alloca i32
  store i32 0, i32* %s1688
  %i1689 = alloca i32
  store i32 0, i32* %i1689
  br label %__cond783

__cond783:
  %_lhs1690 = load i32* %i1689
  %bop1691 = icmp slt i32 %_lhs1690, 5
  br i1 %bop1691, label %__body782, label %__post781

__fresh785:
  br label %__body782

__body782:
  %_lhs1692 = load i32* %s1688
  %_lhs1693 = load i32* %i1689
  %size_ptr1695 = getelementptr { i32, [ 0 x i32 ] }* %arr1687, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1695, i32 %_lhs1693 )
  %index_ptr1694 = getelementptr { i32, [ 0 x i32 ] }* %arr1687, i32 0, i32 1, i32 %_lhs1693
  %_lhs1696 = load { i32, [ 0 x i32 ] }** %arr1687
  %bop1697 = add i32 %_lhs1692, %_lhs1696
  store i32 %bop1697, i32* %s1688
  %_lhs1698 = load i32* %i1689
  %bop1699 = add i32 %_lhs1698, 1
  store i32 %bop1699, i32* %i1689
  br label %__cond783

__fresh786:
  br label %__post781

__post781:
  %_lhs1700 = load i32* %s1688
  ret i32 %_lhs1700
}


define void @str1679.init (){

__fresh780:
  %strval1678 = load i8** @_oat_string1677
  store i8* %strval1678, i8** @str1679
  ret void
}


