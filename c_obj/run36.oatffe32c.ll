declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1396:
  ret void
}


define i32 @program (i32 %argc3130, { i32, [ 0 x i8* ] }* %argv3128){

__fresh1395:
  %argc_slot3131 = alloca i32
  store i32 %argc3130, i32* %argc_slot3131
  %argv_slot3129 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3128, { i32, [ 0 x i8* ] }** %argv_slot3129
  %array_ptr3132 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3133 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3132 to { i32, [ 0 x i32 ] }* 
  %index_ptr3134 = getelementptr { i32, [ 0 x i32 ] }* %array3133, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3134
  %index_ptr3135 = getelementptr { i32, [ 0 x i32 ] }* %array3133, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3135
  %a3136 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3133, { i32, [ 0 x i32 ] }** %a3136
  %unop3137 = sub i32 0, 1
  %size_ptr3139 = getelementptr { i32, [ 0 x i32 ] }* %a3136, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3139, i32 %unop3137 )
  %index_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %a3136, i32 0, i32 1, i32 %unop3137
  %_lhs3140 = load { i32, [ 0 x i32 ] }** %a3136
  ret { i32, [ 0 x i32 ] }* %_lhs3140
}


