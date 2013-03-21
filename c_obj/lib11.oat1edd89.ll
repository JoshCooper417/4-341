declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string442.str. = private unnamed_addr constant [ 2 x i8 ] c "a\00", align 4
@_oat_string442 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string442.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh158:
  ret void
}


define i32 @program (i32 %argc440, { i32, [ 0 x i8* ] }* %argv438){

__fresh157:
  %argc_slot441 = alloca i32
  store i32 %argc440, i32* %argc_slot441
  %argv_slot439 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv438, { i32, [ 0 x i8* ] }** %argv_slot439
  %strval443 = load i8** @_oat_string442
  %ret444 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval443 )
  %arr445 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret444, { i32, [ 0 x i32 ] }** %arr445
  %size_entry_ptr447 = getelementptr { i32, [ 0 x i32 ] }* %arr445, i32 0, i32 0
  %size448 = load i32* %size_entry_ptr447
  call void @oat_array_bounds_check( i32 %size448, i32 0 )
  %index_ptr446 = getelementptr { i32, [ 0 x i32 ] }* %arr445, i32 0, i32 1, i32 0
  %_lhs449 = load i32* %index_ptr446
  %sum450 = alloca i32
  store i32 %_lhs449, i32* %sum450
  %_lhs451 = load i32* %sum450
  ret i32 %_lhs451
}


