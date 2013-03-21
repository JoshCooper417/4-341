declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str3 = global i8* zeroinitializer, align 4		; initialized by str3.init
@_oat_string1.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh8:
  call void @str3.init(  )
  ret void
}


define i32 @program (i32 %argc7, { i32, [ 0 x i8* ] }* %argv5){

__fresh4:
  %argc_slot8 = alloca i32
  store i32 %argc7, i32* %argc_slot8
  %argv_slot6 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5, { i32, [ 0 x i8* ] }** %argv_slot6
  %array_ptr9 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array10 = bitcast { i32, [ 0 x i32 ] }* %array_ptr9 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr12
  br label %__compare1

__fresh5:
  br label %__compare1

__compare1:
  %comparison_result13 = icmp slt i32* %index_ptr12, 4
  br i1 %comparison_result13, label %__body2, label %__end3

__fresh6:
  br label %__body2

__body2:
  %i14 = load i32* %index_ptr12
  %_lhs15 = load i32* %i14
  %index_ptr12 = add i32* %index_ptr12, 1
  br label %__compare1

__fresh7:
  br label %__end3

__end3:
  %arr16 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array10, { i32, [ 0 x i32 ] }** %arr16
  %size_entry_ptr18 = getelementptr { i32, [ 0 x i32 ] }* %arr16, i32 0, i32 0
  %size19 = load i32* %size_entry_ptr18
  call void @oat_array_bounds_check( i32 %size19, i32 2 )
  %index_ptr17 = getelementptr { i32, [ 0 x i32 ] }* %arr16, i32 0, i32 1, i32 2
  %_lhs20 = load i32* %index_ptr17
  %s21 = alloca i32
  store i32 %_lhs20, i32* %s21
  %_lhs22 = load i32* %s21
  ret i32 %_lhs22
}


define void @str3.init (){

__fresh0:
  %strval2 = load i8** @_oat_string1
  store i8* %strval2, i8** @str3
  ret void
}


