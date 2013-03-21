declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh157:
  ret void
}


define i32 @program (i32 %argc375, { i32, [ 0 x i8* ] }* %argv373){

__fresh153:
  %argc_slot376 = alloca i32
  store i32 %argc375, i32* %argc_slot376
  %argv_slot374 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv373, { i32, [ 0 x i8* ] }** %argv_slot374
  %array_ptr377 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array378 = bitcast { i32, [ 0 x i32 ] }* %array_ptr377 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr380
  br label %__compare150

__fresh154:
  br label %__compare150

__compare150:
  %comparison_result381 = icmp slt i32* %index_ptr380, 3
  br i1 %comparison_result381, label %__body151, label %__end152

__fresh155:
  br label %__body151

__body151:
  %i382 = load i32* %index_ptr380
  %index_ptr380 = add i32* %index_ptr380, 1
  br label %__compare150

__fresh156:
  br label %__end152

__end152:
  %a1383 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array378, { i32, [ 0 x i32 ] }** %a1383
  %size_ptr385 = getelementptr { i32, [ 0 x i32 ] }* %a1383, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr385, i32 0 )
  %index_ptr384 = getelementptr { i32, [ 0 x i32 ] }* %a1383, i32 0, i32 1, i32 0
  %_lhs386 = load { i32, [ 0 x i32 ] }** %a1383
  ret { i32, [ 0 x i32 ] }* %_lhs386
}


