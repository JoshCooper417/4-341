declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str939 = global i8* zeroinitializer, align 4		; initialized by str939.init
define void @oat_init (){

__fresh420:
  call void @str939.init(  )
  ret void
}


define i32 @program (i32 %argc942, { i32, [ 0 x i8* ] }* %argv940){

__fresh419:
  %argc_slot943 = alloca i32
  store i32 %argc942, i32* %argc_slot943
  %argv_slot941 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv940, { i32, [ 0 x i8* ] }** %argv_slot941
  %_lhs944 = load i8** @str939
  call void @print_string( i8* %_lhs944 )
  ret i32 0
}


define void @str939.init (){

__fresh415:
  %array_ptr932 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array933 = bitcast { i32, [ 0 x i32 ] }* %array_ptr932 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr935
  br label %__compare412

__fresh416:
  br label %__compare412

__compare412:
  %comparison_result936 = icmp slt i32* %index_ptr935, 3
  br i1 %comparison_result936, label %__body413, label %__end414

__fresh417:
  br label %__body413

__body413:
  %i937 = load i32* %index_ptr935
  %index_ptr935 = add i32* %index_ptr935, 1
  br label %__compare412

__fresh418:
  br label %__end414

__end414:
  %ret938 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array933 )
  store i8* %ret938, i8** @str939
  ret void
}


