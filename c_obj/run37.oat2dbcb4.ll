declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1035:
  ret void
}


define i32 @program (i32 %argc3420, { i32, [ 0 x i8* ] }* %argv3418){

__fresh1034:
  %argc_slot3421 = alloca i32
  store i32 %argc3420, i32* %argc_slot3421
  %argv_slot3419 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3418, { i32, [ 0 x i8* ] }** %argv_slot3419
  %array_ptr3422 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3423 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3422 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3424 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3425 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3424 to { i32, [ 0 x i32 ] }* 
  %index_ptr3426 = getelementptr { i32, [ 0 x i32 ] }* %array3425, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3426
  %index_ptr3427 = getelementptr { i32, [ 0 x i32 ] }* %array3425, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3427
  %index_ptr3428 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3423, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3425, { i32, [ 0 x i32 ] }** %index_ptr3428
  %array_ptr3429 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3430 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3429 to { i32, [ 0 x i32 ] }* 
  %index_ptr3431 = getelementptr { i32, [ 0 x i32 ] }* %array3430, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3431
  %index_ptr3432 = getelementptr { i32, [ 0 x i32 ] }* %array3430, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3432
  %index_ptr3433 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3423, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3430, { i32, [ 0 x i32 ] }** %index_ptr3433
  %a3434 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3423, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3434
  %size_entry_ptr3436 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3434, i32 0, i32 0
  %size3437 = load i32* %size_entry_ptr3436
  call void @oat_array_bounds_check( i32 %size3437, i32 1 )
  %index_ptr3435 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3434, i32 0, i32 1, i32 1
  %size_entry_ptr3439 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3435, i32 0, i32 0
  %size3440 = load i32* %size_entry_ptr3439
  call void @oat_array_bounds_check( i32 %size3440, i32 3 )
  %index_ptr3438 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3435, i32 0, i32 1, i32 3
  %_lhs3441 = load i32* %index_ptr3438
  ret i32 %_lhs3441
}


