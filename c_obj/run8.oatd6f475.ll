declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh225:
  ret void
}


define i32 @program (i32 %argc552, { i32, [ 0 x i8* ] }* %argv550){

__fresh224:
  %argc_slot553 = alloca i32
  store i32 %argc552, i32* %argc_slot553
  %argv_slot551 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv550, { i32, [ 0 x i8* ] }** %argv_slot551
  %array_ptr554 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array555 = bitcast { i32, [ 0 x i32 ] }* %array_ptr554 to { i32, [ 0 x i32 ] }* 
  %index_ptr556 = getelementptr { i32, [ 0 x i32 ] }* %array555, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr556
  %index_ptr557 = getelementptr { i32, [ 0 x i32 ] }* %array555, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr557
  %arr558 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array555, { i32, [ 0 x i32 ] }** %arr558
  %size_ptr560 = getelementptr { i32, [ 0 x i32 ] }* %arr558, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr560, i32 1 )
  %index_ptr559 = getelementptr { i32, [ 0 x i32 ] }* %arr558, i32 0, i32 1, i32 1
  %_lhs561 = load { i32, [ 0 x i32 ] }** %arr558
  ret { i32, [ 0 x i32 ] }* %_lhs561
}


