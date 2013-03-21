declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1046:
  ret void
}


define i32 @program (i32 %argc3470, { i32, [ 0 x i8* ] }* %argv3468){

__fresh1045:
  %argc_slot3471 = alloca i32
  store i32 %argc3470, i32* %argc_slot3471
  %argv_slot3469 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3468, { i32, [ 0 x i8* ] }** %argv_slot3469
  %size_entry_ptr3473 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot3469, i32 0, i32 0
  %size3474 = load i32* %size_entry_ptr3473
  call void @oat_array_bounds_check( i32 %size3474, i32 1 )
  %index_ptr3472 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot3469, i32 0, i32 1, i32 1
  %_lhs3475 = load { i32, [ 0 x i8* ] }** %argv_slot3469
  %ret3476 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs3475, i32 3, i32 5 )
  call void @print_string( i8* %ret3476 )
  ret i32 0
}


define i8* @sub (i8* %str3446, i32 %start3444, i32 %len3442){

__fresh1041:
  %str_slot3447 = alloca i8*
  store i8* %str3446, i8** %str_slot3447
  %start_slot3445 = alloca i32
  store i32 %start3444, i32* %start_slot3445
  %len_slot3443 = alloca i32
  store i32 %len3442, i32* %len_slot3443
  %_lhs3448 = load i8** %str_slot3447
  %ret3449 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs3448 )
  %arr3450 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret3449, { i32, [ 0 x i32 ] }** %arr3450
  %_lhs3451 = load i32* %len_slot3443
  %array_ptr3452 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs3451 )
  %array3453 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3452 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr3455
  br label %__compare1038

__fresh1042:
  br label %__compare1038

__compare1038:
  %comparison_result3456 = icmp slt i32* %index_ptr3455, %_lhs3451
  br i1 %comparison_result3456, label %__body1039, label %__end1040

__fresh1043:
  br label %__body1039

__body1039:
  %i3457 = load i32* %index_ptr3455
  %_lhs3458 = load i32* %i3457
  %_lhs3459 = load i32* %start_slot3445
  %bop3460 = add i32 %_lhs3458, %_lhs3459
  %size_entry_ptr3462 = getelementptr { i32, [ 0 x i32 ] }* %arr3450, i32 0, i32 0
  %size3463 = load i32* %size_entry_ptr3462
  call void @oat_array_bounds_check( i32 %size3463, i32 %bop3460 )
  %index_ptr3461 = getelementptr { i32, [ 0 x i32 ] }* %arr3450, i32 0, i32 1, i32 %bop3460
  %_lhs3464 = load { i32, [ 0 x i32 ] }** %arr3450
  %index_ptr3455 = add i32* %index_ptr3455, 1
  br label %__compare1038

__fresh1044:
  br label %__end1040

__end1040:
  %r3465 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3453, { i32, [ 0 x i32 ] }** %r3465
  %_lhs3466 = load { i32, [ 0 x i32 ] }** %r3465
  %ret3467 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs3466 )
  ret i8* %ret3467
}


