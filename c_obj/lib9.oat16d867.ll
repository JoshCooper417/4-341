declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh833:
  ret void
}


define i32 @program (i32 %argc1798, { i32, [ 0 x i8* ] }* %argv1796){

__fresh830:
  %argc_slot1799 = alloca i32
  store i32 %argc1798, i32* %argc_slot1799
  %argv_slot1797 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1796, { i32, [ 0 x i8* ] }** %argv_slot1797
  %i1800 = alloca i32
  store i32 1, i32* %i1800
  br label %__cond829

__cond829:
  %_lhs1801 = load i32* %i1800
  %_lhs1802 = load i32* %argc_slot1799
  %bop1803 = icmp slt i32 %_lhs1801, %_lhs1802
  br i1 %bop1803, label %__body828, label %__post827

__fresh831:
  br label %__body828

__body828:
  %_lhs1804 = load i32* %i1800
  %size_ptr1806 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1797, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1806, i32 %_lhs1804 )
  %index_ptr1805 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot1797, i32 0, i32 1, i32 %_lhs1804
  %_lhs1807 = load { i32, [ 0 x i8* ] }** %argv_slot1797
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs1807 )
  %_lhs1808 = load i32* %i1800
  %bop1809 = add i32 %_lhs1808, 1
  store i32 %bop1809, i32* %i1800
  br label %__cond829

__fresh832:
  br label %__post827

__post827:
  %_lhs1810 = load i32* %argc_slot1799
  ret i32 %_lhs1810
}


