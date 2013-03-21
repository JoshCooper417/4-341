declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh390:
  ret void
}


define i32 @program (i32 %argc852, { i32, [ 0 x i8* ] }* %argv850){

__fresh383:
  %argc_slot853 = alloca i32
  store i32 %argc852, i32* %argc_slot853
  %argv_slot851 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv850, { i32, [ 0 x i8* ] }** %argv_slot851
  %x854 = alloca i32
  store i32 10, i32* %x854
  %array_ptr855 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array856 = bitcast { i32, [ 0 x i32 ] }* %array_ptr855 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr858
  br label %__compare380

__fresh384:
  br label %__compare380

__compare380:
  %comparison_result859 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr858, 3
  br i1 %comparison_result859, label %__body381, label %__end382

__fresh385:
  br label %__body381

__body381:
  %i860 = load { i32, [ 0 x i32 ] }** %index_ptr858
  %array_ptr861 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array862 = bitcast { i32, [ 0 x i32 ] }* %array_ptr861 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr864
  br label %__compare377

__fresh386:
  br label %__compare377

__compare377:
  %comparison_result865 = icmp slt i32* %index_ptr864, 3
  br i1 %comparison_result865, label %__body378, label %__end379

__fresh387:
  br label %__body378

__body378:
  %j866 = load i32* %index_ptr864
  %_lhs867 = load i32* %x854
  %_lhs868 = load i32* %i860
  %bop869 = add i32 %_lhs867, %_lhs868
  %_lhs870 = load i32* %j866
  %bop871 = add i32 %bop869, %_lhs870
  %index_ptr864 = add i32* %index_ptr864, 1
  br label %__compare377

__fresh388:
  br label %__end379

__end379:
  %index_ptr858 = add { i32, [ 0 x i32 ] }** %index_ptr858, 1
  br label %__compare380

__fresh389:
  br label %__end382

__end382:
  %a872 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array856, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a872
  %_lhs873 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a872
  %b874 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs873, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b874
  %size_ptr876 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b874, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr876, i32 2 )
  %index_ptr875 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b874, i32 0, i32 1, i32 2
  %size_ptr878 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b874, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr878, i32 1 )
  %index_ptr877 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b874, i32 0, i32 1, i32 1
  %_lhs879 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b874
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs879
}


