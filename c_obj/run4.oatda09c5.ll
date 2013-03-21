declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3315 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr3315.init
define void @oat_init (){

__fresh1002:
  call void @arr3315.init(  )
  ret void
}


define i32 @program (i32 %argc3318, { i32, [ 0 x i8* ] }* %argv3316){

__fresh1001:
  %argc_slot3319 = alloca i32
  store i32 %argc3318, i32* %argc_slot3319
  %argv_slot3317 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3316, { i32, [ 0 x i8* ] }** %argv_slot3317
  %size_entry_ptr3321 = getelementptr { i32, [ 0 x i32 ] }* @arr3315, i32 0, i32 0
  %size3322 = load i32* %size_entry_ptr3321
  call void @oat_array_bounds_check( i32 %size3322, i32 2 )
  %index_ptr3320 = getelementptr { i32, [ 0 x i32 ] }* @arr3315, i32 0, i32 1, i32 2
  %_lhs3323 = load { i32, [ 0 x i32 ] }** @arr3315
  ret { i32, [ 0 x i32 ] }* %_lhs3323
}


define void @arr3315.init (){

__fresh1000:
  %array_ptr3311 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3312 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3311 to { i32, [ 0 x i32 ] }* 
  %index_ptr3313 = getelementptr { i32, [ 0 x i32 ] }* %array3312, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3313
  %index_ptr3314 = getelementptr { i32, [ 0 x i32 ] }* %array3312, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3314
  store { i32, [ 0 x i32 ] }* %array3312, { i32, [ 0 x i32 ] }** @arr3315
  ret void
}


