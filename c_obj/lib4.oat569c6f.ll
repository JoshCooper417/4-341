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

__fresh7:
  call void @str3.init(  )
  ret void
}


define i32 @program (i32 %argc7, { i32, [ 0 x i8* ] }* %argv5){

__fresh4:
  %argc_slot8 = alloca i32
  store i32 %argc7, i32* %argc_slot8
  %argv_slot6 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv5, { i32, [ 0 x i8* ] }** %argv_slot6
  %_lhs9 = load i8** @str3
  %ret10 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs9 )
  %arr11 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret10, { i32, [ 0 x i32 ] }** %arr11
  %s12 = alloca i32
  store i32 0, i32* %s12
  %i13 = alloca i32
  store i32 0, i32* %i13
  br label %__cond3

__cond3:
  %_lhs14 = load i32* %i13
  %bop15 = icmp slt i32 %_lhs14, 1
  br i1 %bop15, label %__body2, label %__post1

__fresh5:
  br label %__body2

__body2:
  %_lhs16 = load i32* %s12
  %_lhs17 = load i32* %i13
  %size_entry_ptr19 = getelementptr { i32, [ 0 x i32 ] }* %arr11, i32 0, i32 0
  %size20 = load i32* %size_entry_ptr19
  call void @oat_array_bounds_check( i32 %size20, i32 %_lhs17 )
  %index_ptr18 = getelementptr { i32, [ 0 x i32 ] }* %arr11, i32 0, i32 1, i32 %_lhs17
  %_lhs21 = load i32* %index_ptr18
  %bop22 = add i32 %_lhs16, %_lhs21
  store i32 %bop22, i32* %s12
  %_lhs23 = load i32* %i13
  %bop24 = add i32 %_lhs23, 1
  store i32 %bop24, i32* %i13
  br label %__cond3

__fresh6:
  br label %__post1

__post1:
  %_lhs25 = load i32* %s12
  ret i32 %_lhs25
}


define void @str3.init (){

__fresh0:
  %strval2 = load i8** @_oat_string1
  store i8* %strval2, i8** @str3
  ret void
}


