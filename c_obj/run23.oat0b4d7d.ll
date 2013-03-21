declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs918 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs918.init
@_oat_string914.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string914 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string914.str., i32 0, i32 0), align 4
@_oat_string911.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string911 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string911.str., i32 0, i32 0), align 4
@_oat_string905.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string905 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string905.str., i32 0, i32 0), align 4
@_oat_string902.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string902 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string902.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh404:
  call void @strs918.init(  )
  ret void
}


define i32 @program (i32 %argc925, { i32, [ 0 x i8* ] }* %argv923){

__fresh403:
  %argc_slot926 = alloca i32
  store i32 %argc925, i32* %argc_slot926
  %argv_slot924 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv923, { i32, [ 0 x i8* ] }** %argv_slot924
  %size_ptr928 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs918, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr928, i32 1 )
  %index_ptr927 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs918, i32 0, i32 1, i32 1
  %size_ptr930 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs918, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr930, i32 1 )
  %index_ptr929 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs918, i32 0, i32 1, i32 1
  %_lhs931 = load { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs918
  call void @print_string( { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %_lhs931 )
  ret i32 0
}


define void @strs918.init (){

__fresh402:
  %array_ptr898 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array899 = bitcast { i32, [ 0 x i32 ] }* %array_ptr898 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr900 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array901 = bitcast { i32, [ 0 x i32 ] }* %array_ptr900 to { i32, [ 0 x i8* ] }* 
  %strval903 = load i8** @_oat_string902
  %index_ptr904 = getelementptr { i32, [ 0 x i8* ] }* %array901, i32 0, i32 1, i32 0
  store i8* %strval903, i8** %index_ptr904
  %strval906 = load i8** @_oat_string905
  %index_ptr907 = getelementptr { i32, [ 0 x i8* ] }* %array901, i32 0, i32 1, i32 1
  store i8* %strval906, i8** %index_ptr907
  %index_ptr908 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array899, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array901, { i32, [ 0 x i8* ] }** %index_ptr908
  %array_ptr909 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array910 = bitcast { i32, [ 0 x i32 ] }* %array_ptr909 to { i32, [ 0 x i8* ] }* 
  %strval912 = load i8** @_oat_string911
  %index_ptr913 = getelementptr { i32, [ 0 x i8* ] }* %array910, i32 0, i32 1, i32 0
  store i8* %strval912, i8** %index_ptr913
  %strval915 = load i8** @_oat_string914
  %index_ptr916 = getelementptr { i32, [ 0 x i8* ] }* %array910, i32 0, i32 1, i32 1
  store i8* %strval915, i8** %index_ptr916
  %index_ptr917 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array899, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array910, { i32, [ 0 x i8* ] }** %index_ptr917
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array899, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs918
  ret void
}


