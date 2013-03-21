declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh229:
  ret void
}


define i32 @program (i32 %argc564, { i32, [ 0 x i8* ] }* %argv562){

__fresh228:
  %argc_slot565 = alloca i32
  store i32 %argc564, i32* %argc_slot565
  %argv_slot563 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv562, { i32, [ 0 x i8* ] }** %argv_slot563
  %array_ptr566 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array567 = bitcast { i32, [ 0 x i32 ] }* %array_ptr566 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr568 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array569 = bitcast { i32, [ 0 x i32 ] }* %array_ptr568 to { i32, [ 0 x i32 ] }* 
  %index_ptr570 = getelementptr { i32, [ 0 x i32 ] }* %array569, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr570
  %index_ptr571 = getelementptr { i32, [ 0 x i32 ] }* %array569, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr571
  %index_ptr572 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array567, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array569, { i32, [ 0 x i32 ] }** %index_ptr572
  %array_ptr573 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array574 = bitcast { i32, [ 0 x i32 ] }* %array_ptr573 to { i32, [ 0 x i32 ] }* 
  %index_ptr575 = getelementptr { i32, [ 0 x i32 ] }* %array574, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr575
  %index_ptr576 = getelementptr { i32, [ 0 x i32 ] }* %array574, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr576
  %index_ptr577 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array567, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array574, { i32, [ 0 x i32 ] }** %index_ptr577
  %arr578 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array567, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr578
  %size_ptr580 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr578, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr580, i32 1 )
  %index_ptr579 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr578, i32 0, i32 1, i32 1
  %size_ptr582 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr578, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr582, i32 1 )
  %index_ptr581 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr578, i32 0, i32 1, i32 1
  %_lhs583 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr578
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs583
}


