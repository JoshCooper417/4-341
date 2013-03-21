declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1390:
  ret void
}


define i32 @program (i32 %argc3100, { i32, [ 0 x i8* ] }* %argv3098){

__fresh1383:
  %argc_slot3101 = alloca i32
  store i32 %argc3100, i32* %argc_slot3101
  %argv_slot3099 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3098, { i32, [ 0 x i8* ] }** %argv_slot3099
  %x3102 = alloca i32
  store i32 10, i32* %x3102
  %array_ptr3103 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3104 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3103 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr3106
  br label %__compare1380

__fresh1384:
  br label %__compare1380

__compare1380:
  %comparison_result3107 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr3106, 3
  br i1 %comparison_result3107, label %__body1381, label %__end1382

__fresh1385:
  br label %__body1381

__body1381:
  %i3108 = load { i32, [ 0 x i32 ] }** %index_ptr3106
  %array_ptr3109 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3110 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3109 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr3112
  br label %__compare1377

__fresh1386:
  br label %__compare1377

__compare1377:
  %comparison_result3113 = icmp slt i32* %index_ptr3112, 3
  br i1 %comparison_result3113, label %__body1378, label %__end1379

__fresh1387:
  br label %__body1378

__body1378:
  %j3114 = load i32* %index_ptr3112
  %_lhs3115 = load i32* %x3102
  %_lhs3116 = load i32* %i3108
  %bop3117 = add i32 %_lhs3115, %_lhs3116
  %_lhs3118 = load i32* %j3114
  %bop3119 = add i32 %bop3117, %_lhs3118
  %index_ptr3112 = add i32* %index_ptr3112, 1
  br label %__compare1377

__fresh1388:
  br label %__end1379

__end1379:
  %index_ptr3106 = add { i32, [ 0 x i32 ] }** %index_ptr3106, 1
  br label %__compare1380

__fresh1389:
  br label %__end1382

__end1382:
  %a3120 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3104, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3120
  %_lhs3121 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3120
  %b3122 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3121, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3122
  %size_ptr3124 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3122, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3124, i32 2 )
  %index_ptr3123 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3122, i32 0, i32 1, i32 2
  %size_ptr3126 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3122, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3126, i32 3 )
  %index_ptr3125 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b3122, i32 0, i32 1, i32 3
  %_lhs3127 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3122
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3127
}


