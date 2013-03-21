declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1705.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1705 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1705.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh797:
  ret void
}


define i32 @program (i32 %argc1703, { i32, [ 0 x i8* ] }* %argv1701){

__fresh794:
  %argc_slot1704 = alloca i32
  store i32 %argc1703, i32* %argc_slot1704
  %argv_slot1702 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1701, { i32, [ 0 x i8* ] }** %argv_slot1702
  %strval1706 = load i8** @_oat_string1705
  %str1707 = alloca i8*
  store i8* %strval1706, i8** %str1707
  %_lhs1708 = load i8** %str1707
  %ret1709 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1708 )
  %arr1710 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1709, { i32, [ 0 x i32 ] }** %arr1710
  %s1711 = alloca i32
  store i32 0, i32* %s1711
  %i1712 = alloca i32
  store i32 0, i32* %i1712
  br label %__cond793

__cond793:
  %_lhs1713 = load i32* %i1712
  %bop1714 = icmp slt i32 %_lhs1713, 5
  br i1 %bop1714, label %__body792, label %__post791

__fresh795:
  br label %__body792

__body792:
  %_lhs1715 = load i32* %s1711
  %_lhs1716 = load i32* %i1712
  %size_ptr1718 = getelementptr { i32, [ 0 x i32 ] }* %arr1710, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1718, i32 %_lhs1716 )
  %index_ptr1717 = getelementptr { i32, [ 0 x i32 ] }* %arr1710, i32 0, i32 1, i32 %_lhs1716
  %_lhs1719 = load { i32, [ 0 x i32 ] }** %arr1710
  %bop1720 = add i32 %_lhs1715, %_lhs1719
  store i32 %bop1720, i32* %s1711
  %_lhs1721 = load i32* %i1712
  %bop1722 = add i32 %_lhs1721, 1
  store i32 %bop1722, i32* %i1712
  br label %__cond793

__fresh796:
  br label %__post791

__post791:
  %_lhs1723 = load i32* %s1711
  ret i32 %_lhs1723
}


