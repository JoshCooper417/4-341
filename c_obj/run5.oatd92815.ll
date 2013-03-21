declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr540 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr540.init
define void @oat_init (){

__fresh217:
  call void @arr540.init(  )
  ret void
}


define i32 @program (i32 %argc543, { i32, [ 0 x i8* ] }* %argv541){

__fresh216:
  %argc_slot544 = alloca i32
  store i32 %argc543, i32* %argc_slot544
  %argv_slot542 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv541, { i32, [ 0 x i8* ] }** %argv_slot542
  %size_ptr546 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr540, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr546, i32 1 )
  %index_ptr545 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr540, i32 0, i32 1, i32 1
  %size_ptr548 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr540, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr548, i32 1 )
  %index_ptr547 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr540, i32 0, i32 1, i32 1
  %_lhs549 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr540
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs549
}


define void @arr540.init (){

__fresh215:
  %array_ptr528 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array529 = bitcast { i32, [ 0 x i32 ] }* %array_ptr528 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr530 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array531 = bitcast { i32, [ 0 x i32 ] }* %array_ptr530 to { i32, [ 0 x i32 ] }* 
  %index_ptr532 = getelementptr { i32, [ 0 x i32 ] }* %array531, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr532
  %index_ptr533 = getelementptr { i32, [ 0 x i32 ] }* %array531, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr533
  %index_ptr534 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array529, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array531, { i32, [ 0 x i32 ] }** %index_ptr534
  %array_ptr535 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array536 = bitcast { i32, [ 0 x i32 ] }* %array_ptr535 to { i32, [ 0 x i32 ] }* 
  %index_ptr537 = getelementptr { i32, [ 0 x i32 ] }* %array536, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr537
  %index_ptr538 = getelementptr { i32, [ 0 x i32 ] }* %array536, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr538
  %index_ptr539 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array529, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array536, { i32, [ 0 x i32 ] }** %index_ptr539
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array529, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr540
  ret void
}


