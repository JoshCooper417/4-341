declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh141:
  ret void
}


define i32 @program (i32 %argc385, { i32, [ 0 x i8* ] }* %argv383){

__fresh137:
  %argc_slot386 = alloca i32
  store i32 %argc385, i32* %argc_slot386
  %argv_slot384 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv383, { i32, [ 0 x i8* ] }** %argv_slot384
  %array_ptr387 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array388 = bitcast { i32, [ 0 x i32 ] }* %array_ptr387 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr390
  br label %__compare134

__fresh138:
  br label %__compare134

__compare134:
  %comparison_result391 = icmp slt i32* %index_ptr390, 3
  br i1 %comparison_result391, label %__body135, label %__end136

__fresh139:
  br label %__body135

__body135:
  %i392 = load i32* %index_ptr390
  %index_ptr390 = add i32* %index_ptr390, 1
  br label %__compare134

__fresh140:
  br label %__end136

__end136:
  %a1393 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array388, { i32, [ 0 x i32 ] }** %a1393
  %size_entry_ptr395 = getelementptr { i32, [ 0 x i32 ] }* %a1393, i32 0, i32 0
  %size396 = load i32* %size_entry_ptr395
  call void @oat_array_bounds_check( i32 %size396, i32 0 )
  %index_ptr394 = getelementptr { i32, [ 0 x i32 ] }* %a1393, i32 0, i32 1, i32 0
  %_lhs397 = load { i32, [ 0 x i32 ] }** %a1393
  ret { i32, [ 0 x i32 ] }* %_lhs397
}


