declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1400:
  ret void
}


define i32 @program (i32 %argc3143, { i32, [ 0 x i8* ] }* %argv3141){

__fresh1399:
  %argc_slot3144 = alloca i32
  store i32 %argc3143, i32* %argc_slot3144
  %argv_slot3142 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3141, { i32, [ 0 x i8* ] }** %argv_slot3142
  %array_ptr3145 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3146 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3145 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3147 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3148 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3147 to { i32, [ 0 x i32 ] }* 
  %index_ptr3149 = getelementptr { i32, [ 0 x i32 ] }* %array3148, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3149
  %index_ptr3150 = getelementptr { i32, [ 0 x i32 ] }* %array3148, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3150
  %index_ptr3151 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3146, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3148, { i32, [ 0 x i32 ] }** %index_ptr3151
  %array_ptr3152 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3153 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3152 to { i32, [ 0 x i32 ] }* 
  %index_ptr3154 = getelementptr { i32, [ 0 x i32 ] }* %array3153, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3154
  %index_ptr3155 = getelementptr { i32, [ 0 x i32 ] }* %array3153, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3155
  %index_ptr3156 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3146, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3153, { i32, [ 0 x i32 ] }** %index_ptr3156
  %a3157 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3146, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3157
  %size_ptr3159 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3157, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3159, i32 1 )
  %index_ptr3158 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3157, i32 0, i32 1, i32 1
  %size_ptr3161 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3157, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3161, i32 3 )
  %index_ptr3160 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3157, i32 0, i32 1, i32 3
  %_lhs3162 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3157
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3162
}


