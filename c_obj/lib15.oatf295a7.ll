declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1414:
  ret void
}


define i32 @program (i32 %argc3190, { i32, [ 0 x i8* ] }* %argv3188){

__fresh1413:
  %argc_slot3191 = alloca i32
  store i32 %argc3190, i32* %argc_slot3191
  %argv_slot3189 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3188, { i32, [ 0 x i8* ] }** %argv_slot3189
  %size_ptr3193 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot3189, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3193, i32 1 )
  %index_ptr3192 = getelementptr { i32, [ 0 x i8* ] }* %argv_slot3189, i32 0, i32 1, i32 1
  %_lhs3194 = load { i32, [ 0 x i8* ] }** %argv_slot3189
  %ret3195 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs3194, i32 3, i32 5 )
  call void @print_string( i8* %ret3195 )
  ret i32 0
}


define i8* @sub (i8* %str3167, i32 %start3165, i32 %len3163){

__fresh1409:
  %str_slot3168 = alloca i8*
  store i8* %str3167, i8** %str_slot3168
  %start_slot3166 = alloca i32
  store i32 %start3165, i32* %start_slot3166
  %len_slot3164 = alloca i32
  store i32 %len3163, i32* %len_slot3164
  %_lhs3169 = load i8** %str_slot3168
  %ret3170 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs3169 )
  %arr3171 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret3170, { i32, [ 0 x i32 ] }** %arr3171
  %_lhs3172 = load i32* %len_slot3164
  %array_ptr3173 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs3172 )
  %array3174 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3173 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr3176
  br label %__compare1406

__fresh1410:
  br label %__compare1406

__compare1406:
  %comparison_result3177 = icmp slt i32* %index_ptr3176, %_lhs3172
  br i1 %comparison_result3177, label %__body1407, label %__end1408

__fresh1411:
  br label %__body1407

__body1407:
  %i3178 = load i32* %index_ptr3176
  %_lhs3179 = load i32* %i3178
  %_lhs3180 = load i32* %start_slot3166
  %bop3181 = add i32 %_lhs3179, %_lhs3180
  %size_ptr3183 = getelementptr { i32, [ 0 x i32 ] }* %arr3171, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3183, i32 %bop3181 )
  %index_ptr3182 = getelementptr { i32, [ 0 x i32 ] }* %arr3171, i32 0, i32 1, i32 %bop3181
  %_lhs3184 = load { i32, [ 0 x i32 ] }** %arr3171
  %index_ptr3176 = add i32* %index_ptr3176, 1
  br label %__compare1406

__fresh1412:
  br label %__end1408

__end1408:
  %r3185 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3174, { i32, [ 0 x i32 ] }** %r3185
  %_lhs3186 = load { i32, [ 0 x i32 ] }** %r3185
  %ret3187 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs3186 )
  ret i8* %ret3187
}


