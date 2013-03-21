declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr3066 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr3066.init
define void @oat_init (){

__fresh1361:
  call void @arr3066.init(  )
  ret void
}


define i32 @program (i32 %argc3069, { i32, [ 0 x i8* ] }* %argv3067){

__fresh1360:
  %argc_slot3070 = alloca i32
  store i32 %argc3069, i32* %argc_slot3070
  %argv_slot3068 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3067, { i32, [ 0 x i8* ] }** %argv_slot3068
  %size_ptr3072 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3066, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3072, i32 1 )
  %index_ptr3071 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3066, i32 0, i32 1, i32 1
  %size_ptr3074 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3066, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3074, i32 3 )
  %index_ptr3073 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr3066, i32 0, i32 1, i32 3
  %_lhs3075 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3066
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3075
}


define void @arr3066.init (){

__fresh1359:
  %array_ptr3054 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3055 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3054 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3056 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3057 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3056 to { i32, [ 0 x i32 ] }* 
  %index_ptr3058 = getelementptr { i32, [ 0 x i32 ] }* %array3057, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3058
  %index_ptr3059 = getelementptr { i32, [ 0 x i32 ] }* %array3057, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3059
  %index_ptr3060 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3055, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3057, { i32, [ 0 x i32 ] }** %index_ptr3060
  %array_ptr3061 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3062 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3061 to { i32, [ 0 x i32 ] }* 
  %index_ptr3063 = getelementptr { i32, [ 0 x i32 ] }* %array3062, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3063
  %index_ptr3064 = getelementptr { i32, [ 0 x i32 ] }* %array3062, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr3064
  %index_ptr3065 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3055, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3062, { i32, [ 0 x i32 ] }** %index_ptr3065
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3055, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr3066
  ret void
}


