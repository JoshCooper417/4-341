declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh54:
  ret void
}


define i32 @program (i32 %argc165, { i32, [ 0 x i8* ] }* %argv163){

__fresh51:
  %argc_slot166 = alloca i32
  store i32 %argc165, i32* %argc_slot166
  %argv_slot164 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv163, { i32, [ 0 x i8* ] }** %argv_slot164
  %array_ptr167 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array168 = bitcast { i32, [ 0 x i32 ] }* %array_ptr167 to { i32, [ 0 x i1 ] }* 
  %index_ptr169 = getelementptr { i32, [ 0 x i1 ] }* %array168, i32 0, i32 1, i32 0
  store i1 1, i1* %index_ptr169
  %index_ptr170 = getelementptr { i32, [ 0 x i1 ] }* %array168, i32 0, i32 1, i32 1
  store i1 0, i1* %index_ptr170
  %b171 = alloca { i32, [ 0 x i1 ] }*
  store { i32, [ 0 x i1 ] }* %array168, { i32, [ 0 x i1 ] }** %b171
  %i172 = alloca i32
  store i32 0, i32* %i172
  %size_entry_ptr174 = getelementptr { i32, [ 0 x i1 ] }* %b171, i32 0, i32 0
  %size175 = load i32* %size_entry_ptr174
  call void @oat_array_bounds_check( i32 %size175, i32 0 )
  %index_ptr173 = getelementptr { i32, [ 0 x i1 ] }* %b171, i32 0, i32 1, i32 0
  %_lhs176 = load i1* %index_ptr173
  br i1 %_lhs176, label %__then50, label %__else49

__fresh52:
  br label %__then50

__then50:
  store i32 1, i32* %i172
  br label %__merge48

__fresh53:
  br label %__else49

__else49:
  br label %__merge48

__merge48:
  %_lhs177 = load i32* %i172
  ret i32 %_lhs177
}


