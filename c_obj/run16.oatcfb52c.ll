declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh311:
  ret void
}


define i32 @program (i32 %argc893, { i32, [ 0 x i8* ] }* %argv891){

__fresh304:
  %argc_slot894 = alloca i32
  store i32 %argc893, i32* %argc_slot894
  %argv_slot892 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv891, { i32, [ 0 x i8* ] }** %argv_slot892
  %x895 = alloca i32
  store i32 10, i32* %x895
  %array_ptr896 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array897 = bitcast { i32, [ 0 x i32 ] }* %array_ptr896 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr899
  br label %__compare301

__fresh305:
  br label %__compare301

__compare301:
  %comparison_result900 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr899, 3
  br i1 %comparison_result900, label %__body302, label %__end303

__fresh306:
  br label %__body302

__body302:
  %i901 = load { i32, [ 0 x i32 ] }** %index_ptr899
  %array_ptr902 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array903 = bitcast { i32, [ 0 x i32 ] }* %array_ptr902 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr905
  br label %__compare298

__fresh307:
  br label %__compare298

__compare298:
  %comparison_result906 = icmp slt i32* %index_ptr905, 3
  br i1 %comparison_result906, label %__body299, label %__end300

__fresh308:
  br label %__body299

__body299:
  %j907 = load i32* %index_ptr905
  %_lhs908 = load i32* %x895
  %_lhs909 = load i32* %i901
  %bop910 = add i32 %_lhs908, %_lhs909
  %_lhs911 = load i32* %j907
  %bop912 = add i32 %bop910, %_lhs911
  %index_ptr905 = add i32* %index_ptr905, 1
  br label %__compare298

__fresh309:
  br label %__end300

__end300:
  %index_ptr899 = add { i32, [ 0 x i32 ] }** %index_ptr899, 1
  br label %__compare301

__fresh310:
  br label %__end303

__end303:
  %a913 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array897, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a913
  %_lhs914 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a913
  %b915 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs914, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b915
  %size_entry_ptr917 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b915, i32 0, i32 0
  %size918 = load i32* %size_entry_ptr917
  call void @oat_array_bounds_check( i32 %size918, i32 2 )
  %index_ptr916 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b915, i32 0, i32 1, i32 2
  %size_entry_ptr920 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b915, i32 0, i32 0
  %size921 = load i32* %size_entry_ptr920
  call void @oat_array_bounds_check( i32 %size921, i32 1 )
  %index_ptr919 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b915, i32 0, i32 1, i32 1
  %_lhs922 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b915
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs922
}


