declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3336 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3336.init
define void @oat_init (){

__fresh1007:
  call void @arr3336.init(  )
  ret void
}


define i32 @program (i32 %argc3339, { i32, [ 0 x i8* ] }* %argv3337){

__fresh1006:
  %argc_slot3340 = alloca i32
  store i32 %argc3339, i32* %argc_slot3340
  %argv_slot3338 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3337, { i32, [ 0 x i8* ] }** %argv_slot3338
  %size_entry_ptr3342 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3336, i32 0, i32 0
  %size3343 = load i32* %size_entry_ptr3342
  call void @oat_array_bounds_check( i32 %size3343, i32 1 )
  %index_ptr3341 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3336, i32 0, i32 1, i32 1
  %size_entry_ptr3345 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3341, i32 0, i32 0
  %size3346 = load i32* %size_entry_ptr3345
  call void @oat_array_bounds_check( i32 %size3346, i32 3 )
  %index_ptr3344 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3341, i32 0, i32 1, i32 3
  %_lhs3347 = load i32* %index_ptr3344
  ret i32 %_lhs3347
}


define void @arr3336.init (){

__fresh1005:
  %array_ptr3324 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3325 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3324 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3326 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3327 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3326 to { i32, [ 0 x i32 ] }* 
  %index_ptr3328 = getelementptr { i32, [ 0 x i32 ] }* %array3327, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3328
  %index_ptr3329 = getelementptr { i32, [ 0 x i32 ] }* %array3327, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3329
  %index_ptr3330 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3325, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3327, { i32, [ 0 x i32 ] }** %index_ptr3330
  %array_ptr3331 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3332 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3331 to { i32, [ 0 x i32 ] }* 
  %index_ptr3333 = getelementptr { i32, [ 0 x i32 ] }* %array3332, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3333
  %index_ptr3334 = getelementptr { i32, [ 0 x i32 ] }* %array3332, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3334
  %index_ptr3335 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3325, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3332, { i32, [ 0 x i32 ] }** %index_ptr3335
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3325, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3336
  ret void
}


