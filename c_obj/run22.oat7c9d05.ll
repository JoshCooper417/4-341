declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs931 = global { i32, [ 0 x i8* ] }* zeroinitializer, align 4		; initialized by strs931.init
@_oat_string928.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string928 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string928.str., i32 0, i32 0), align 4
@_oat_string925.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string925 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string925.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh314:
  call void @strs931.init(  )
  ret void
}


define i32 @program (i32 %argc936, { i32, [ 0 x i8* ] }* %argv934){

__fresh313:
  %argc_slot937 = alloca i32
  store i32 %argc936, i32* %argc_slot937
  %argv_slot935 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv934, { i32, [ 0 x i8* ] }** %argv_slot935
  %size_entry_ptr939 = getelementptr { i32, [ 0 x i8* ] }* @strs931, i32 0, i32 0
  %size940 = load i32* %size_entry_ptr939
  call void @oat_array_bounds_check( i32 %size940, i32 0 )
  %index_ptr938 = getelementptr { i32, [ 0 x i8* ] }* @strs931, i32 0, i32 1, i32 0
  %_lhs941 = load { i32, [ 0 x i8* ] }** @strs931
  call void @print_string( { i32, [ 0 x i8* ] }* %_lhs941 )
  ret i32 0
}


define void @strs931.init (){

__fresh312:
  %array_ptr923 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array924 = bitcast { i32, [ 0 x i32 ] }* %array_ptr923 to { i32, [ 0 x i8* ] }* 
  %strval926 = load i8** @_oat_string925
  %index_ptr927 = getelementptr { i32, [ 0 x i8* ] }* %array924, i32 0, i32 1, i32 0
  store i8* %strval926, i8** %index_ptr927
  %strval929 = load i8** @_oat_string928
  %index_ptr930 = getelementptr { i32, [ 0 x i8* ] }* %array924, i32 0, i32 1, i32 1
  store i8* %strval929, i8** %index_ptr930
  store { i32, [ 0 x i8* ] }* %array924, { i32, [ 0 x i8* ] }** @strs931
  ret void
}


