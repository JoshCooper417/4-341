declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh7:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh3:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr8
  br label %__compare0

__fresh4:
  br label %__compare0

__compare0:
  %comparison_result10 = icmp slt i32* %index_ptr8, 5
  br i1 %comparison_result10, label %__body1, label %__end2

__fresh5:
  br label %__body1

__body1:
  %index_ptr9 = getelementptr { i32, [ 0 x i32 ] }* %array6, i32 0, i32 1, i32* %index_ptr8
  %i11 = load i32* %index_ptr8
  %_lhs12 = load i32* %i11
  store i32* %index_ptr9, i32* %i11
  %index_ptr8 = add i32* %index_ptr8, 1
  br label %__compare0

__fresh6:
  br label %__end2

__end2:
  %arr13 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array6, { i32, [ 0 x i32 ] }** %arr13
  %size_entry_ptr15 = getelementptr { i32, [ 0 x i32 ] }* %arr13, i32 0, i32 0
  %size16 = load i32* %size_entry_ptr15
  call void @oat_array_bounds_check( i32 %size16, i32 1 )
  %index_ptr14 = getelementptr { i32, [ 0 x i32 ] }* %arr13, i32 0, i32 1, i32 1
  %_lhs17 = load i32* %index_ptr14
  %sum18 = alloca i32
  store i32 %_lhs17, i32* %sum18
  %_lhs19 = load i32* %sum18
  ret i32 %_lhs19
}


