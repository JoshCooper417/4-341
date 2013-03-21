declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1030:
  ret void
}


define i32 @program (i32 %argc3374, { i32, [ 0 x i8* ] }* %argv3372){

__fresh1023:
  %argc_slot3375 = alloca i32
  store i32 %argc3374, i32* %argc_slot3375
  %argv_slot3373 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3372, { i32, [ 0 x i8* ] }** %argv_slot3373
  %x3376 = alloca i32
  store i32 10, i32* %x3376
  %array_ptr3377 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3378 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3377 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr3380
  br label %__compare1020

__fresh1024:
  br label %__compare1020

__compare1020:
  %comparison_result3381 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr3380, 3
  br i1 %comparison_result3381, label %__body1021, label %__end1022

__fresh1025:
  br label %__body1021

__body1021:
  %i3382 = load { i32, [ 0 x i32 ] }** %index_ptr3380
  %array_ptr3383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3383 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr3386
  br label %__compare1017

__fresh1026:
  br label %__compare1017

__compare1017:
  %comparison_result3387 = icmp slt i32* %index_ptr3386, 3
  br i1 %comparison_result3387, label %__body1018, label %__end1019

__fresh1027:
  br label %__body1018

__body1018:
  %j3388 = load i32* %index_ptr3386
  %_lhs3389 = load i32* %x3376
  %_lhs3390 = load i32* %i3382
  %bop3391 = add i32 %_lhs3389, %_lhs3390
  %_lhs3392 = load i32* %j3388
  %bop3393 = add i32 %bop3391, %_lhs3392
  %index_ptr3386 = add i32* %index_ptr3386, 1
  br label %__compare1017

__fresh1028:
  br label %__end1019

__end1019:
  %index_ptr3380 = add { i32, [ 0 x i32 ] }** %index_ptr3380, 1
  br label %__compare1020

__fresh1029:
  br label %__end1022

__end1022:
  %a3394 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3378, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3394
  %_lhs3395 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3394
  %b3396 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3395, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3396
  %size_entry_ptr3398 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3396, i32 0, i32 0
  %size3399 = load i32* %size_entry_ptr3398
  call void @oat_array_bounds_check( i32 %size3399, i32 2 )
  %index_ptr3397 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3396, i32 0, i32 1, i32 2
  %size_entry_ptr3401 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3397, i32 0, i32 0
  %size3402 = load i32* %size_entry_ptr3401
  call void @oat_array_bounds_check( i32 %size3402, i32 3 )
  %index_ptr3400 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3397, i32 0, i32 1, i32 3
  %_lhs3403 = load i32* %index_ptr3400
  ret i32 %_lhs3403
}


