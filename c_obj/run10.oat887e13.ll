declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr598 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr598.init
define void @oat_init (){

__fresh238:
  call void @garr598.init(  )
  ret void
}


define i32 @program (i32 %argc604, { i32, [ 0 x i8* ] }* %argv602){

__fresh237:
  %argc_slot605 = alloca i32
  store i32 %argc604, i32* %argc_slot605
  %argv_slot603 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv602, { i32, [ 0 x i8* ] }** %argv_slot603
  %size_ptr607 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr598, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr607, i32 1 )
  %index_ptr606 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr598, i32 0, i32 1, i32 1
  %_lhs608 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr598
  %ret609 = call { i32, [ 0 x i32 ] }* @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs608 )
  %arr610 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret609, { i32, [ 0 x i32 ] }** %arr610
  %size_ptr612 = getelementptr { i32, [ 0 x i32 ] }* %arr610, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr612, i32 1 )
  %index_ptr611 = getelementptr { i32, [ 0 x i32 ] }* %arr610, i32 0, i32 1, i32 1
  %_lhs613 = load { i32, [ 0 x i32 ] }** %arr610
  ret { i32, [ 0 x i32 ] }* %_lhs613
}


define { i32, [ 0 x i32 ] }* @f ({ i32, [ 0 x i32 ] }* %arr599){

__fresh236:
  %arr_slot600 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr599, { i32, [ 0 x i32 ] }** %arr_slot600
  %_lhs601 = load { i32, [ 0 x i32 ] }** %arr_slot600
  ret { i32, [ 0 x i32 ] }* %_lhs601
}


define void @garr598.init (){

__fresh235:
  %array_ptr584 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array585 = bitcast { i32, [ 0 x i32 ] }* %array_ptr584 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr586 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array587 = bitcast { i32, [ 0 x i32 ] }* %array_ptr586 to { i32, [ 0 x i32 ] }* 
  %index_ptr588 = getelementptr { i32, [ 0 x i32 ] }* %array587, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr588
  %index_ptr589 = getelementptr { i32, [ 0 x i32 ] }* %array587, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr589
  %index_ptr590 = getelementptr { i32, [ 0 x i32 ] }* %array587, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr590
  %index_ptr591 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array585, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array587, { i32, [ 0 x i32 ] }** %index_ptr591
  %array_ptr592 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array593 = bitcast { i32, [ 0 x i32 ] }* %array_ptr592 to { i32, [ 0 x i32 ] }* 
  %index_ptr594 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr594
  %index_ptr595 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr595
  %index_ptr596 = getelementptr { i32, [ 0 x i32 ] }* %array593, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr596
  %index_ptr597 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array585, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array593, { i32, [ 0 x i32 ] }** %index_ptr597
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array585, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr598
  ret void
}


