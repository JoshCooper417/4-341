declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1032:
  ret void
}


define i32 @program (i32 %argc3406, { i32, [ 0 x i8* ] }* %argv3404){

__fresh1031:
  %argc_slot3407 = alloca i32
  store i32 %argc3406, i32* %argc_slot3407
  %argv_slot3405 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3404, { i32, [ 0 x i8* ] }** %argv_slot3405
  %array_ptr3408 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3409 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3408 to { i32, [ 0 x i32 ] }* 
  %index_ptr3410 = getelementptr { i32, [ 0 x i32 ] }* %array3409, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3410
  %index_ptr3411 = getelementptr { i32, [ 0 x i32 ] }* %array3409, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3411
  %a3412 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3409, { i32, [ 0 x i32 ] }** %a3412
  %unop3413 = sub i32 0, 1
  %size_entry_ptr3415 = getelementptr { i32, [ 0 x i32 ] }* %a3412, i32 0, i32 0
  %size3416 = load i32* %size_entry_ptr3415
  call void @oat_array_bounds_check( i32 %size3416, i32 %unop3413 )
  %index_ptr3414 = getelementptr { i32, [ 0 x i32 ] }* %a3412, i32 0, i32 1, i32 %unop3413
  %_lhs3417 = load i32* %index_ptr3414
  ret i32 %_lhs3417
}


