declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11732 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11732.init
define void @oat_init (){

__fresh807:
  call void @arr11732.init(  )
  ret void
}


define i32 @program (i32 %argc1735, { i32, [ 0 x i8* ] }* %argv1733){

__fresh804:
  %argc_slot1736 = alloca i32
  store i32 %argc1735, i32* %argc_slot1736
  %argv_slot1734 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1733, { i32, [ 0 x i8* ] }** %argv_slot1734
  %_lhs1737 = load { i32, [ 0 x i32 ] }** @arr11732
  %ret1738 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1737 )
  %str1739 = alloca i8*
  store i8* %ret1738, i8** %str1739
  %_lhs1740 = load i8** %str1739
  %ret1741 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1740 )
  %arr21742 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1741, { i32, [ 0 x i32 ] }** %arr21742
  %s1743 = alloca i32
  store i32 0, i32* %s1743
  %i1744 = alloca i32
  store i32 0, i32* %i1744
  br label %__cond803

__cond803:
  %_lhs1745 = load i32* %i1744
  %bop1746 = icmp slt i32 %_lhs1745, 5
  br i1 %bop1746, label %__body802, label %__post801

__fresh805:
  br label %__body802

__body802:
  %_lhs1747 = load i32* %s1743
  %_lhs1748 = load i32* %i1744
  %size_ptr1750 = getelementptr { i32, [ 0 x i32 ] }* %arr21742, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1750, i32 %_lhs1748 )
  %index_ptr1749 = getelementptr { i32, [ 0 x i32 ] }* %arr21742, i32 0, i32 1, i32 %_lhs1748
  %_lhs1751 = load { i32, [ 0 x i32 ] }** %arr21742
  %bop1752 = add i32 %_lhs1747, %_lhs1751
  store i32 %bop1752, i32* %s1743
  %_lhs1753 = load i32* %i1744
  %bop1754 = add i32 %_lhs1753, 1
  store i32 %bop1754, i32* %i1744
  br label %__cond803

__fresh806:
  br label %__post801

__post801:
  %_lhs1755 = load i32* %s1743
  ret i32 %_lhs1755
}


define void @arr11732.init (){

__fresh800:
  %array_ptr1725 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1726 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1725 to { i32, [ 0 x i32 ] }* 
  %index_ptr1727 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1727
  %index_ptr1728 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1728
  %index_ptr1729 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1729
  %index_ptr1730 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1730
  %index_ptr1731 = getelementptr { i32, [ 0 x i32 ] }* %array1726, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1731
  store { i32, [ 0 x i32 ] }* %array1726, { i32, [ 0 x i32 ] }** @arr11732
  ret void
}


