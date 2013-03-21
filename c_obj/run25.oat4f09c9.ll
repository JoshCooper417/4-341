declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str985 = global i8* zeroinitializer, align 4		; initialized by str985.init
define void @oat_init (){

__fresh333:
  call void @str985.init(  )
  ret void
}


define i32 @program (i32 %argc988, { i32, [ 0 x i8* ] }* %argv986){

__fresh332:
  %argc_slot989 = alloca i32
  store i32 %argc988, i32* %argc_slot989
  %argv_slot987 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv986, { i32, [ 0 x i8* ] }** %argv_slot987
  %_lhs990 = load i8** @str985
  call void @print_string( i8* %_lhs990 )
  ret i32 0
}


define void @str985.init (){

__fresh328:
  %array_ptr978 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array979 = bitcast { i32, [ 0 x i32 ] }* %array_ptr978 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr981
  br label %__compare325

__fresh329:
  br label %__compare325

__compare325:
  %comparison_result982 = icmp slt i32* %index_ptr981, 3
  br i1 %comparison_result982, label %__body326, label %__end327

__fresh330:
  br label %__body326

__body326:
  %i983 = load i32* %index_ptr981
  %index_ptr981 = add i32* %index_ptr981, 1
  br label %__compare325

__fresh331:
  br label %__end327

__end327:
  %ret984 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array979 )
  store i8* %ret984, i8** @str985
  ret void
}


