declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr520 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr520.init
define void @oat_init (){

__fresh211:
  call void @arr520.init(  )
  ret void
}


define i32 @program (i32 %argc523, { i32, [ 0 x i8* ] }* %argv521){

__fresh210:
  %argc_slot524 = alloca i32
  store i32 %argc523, i32* %argc_slot524
  %argv_slot522 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv521, { i32, [ 0 x i8* ] }** %argv_slot522
  %size_ptr526 = getelementptr { i32, [ 0 x i32 ] }* @arr520, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr526, i32 1 )
  %index_ptr525 = getelementptr { i32, [ 0 x i32 ] }* @arr520, i32 0, i32 1, i32 1
  %_lhs527 = load { i32, [ 0 x i32 ] }** @arr520
  ret { i32, [ 0 x i32 ] }* %_lhs527
}


define void @arr520.init (){

__fresh209:
  %array_ptr516 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array517 = bitcast { i32, [ 0 x i32 ] }* %array_ptr516 to { i32, [ 0 x i32 ] }* 
  %index_ptr518 = getelementptr { i32, [ 0 x i32 ] }* %array517, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr518
  %index_ptr519 = getelementptr { i32, [ 0 x i32 ] }* %array517, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr519
  store { i32, [ 0 x i32 ] }* %array517, { i32, [ 0 x i32 ] }** @arr520
  ret void
}


