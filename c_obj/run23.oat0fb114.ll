declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@strs962 = global { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* zeroinitializer, align 4		; initialized by strs962.init
@_oat_string958.str. = private unnamed_addr constant [ 4 x i8 ] c "123\00", align 4
@_oat_string958 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string958.str., i32 0, i32 0), align 4
@_oat_string955.str. = private unnamed_addr constant [ 4 x i8 ] c "789\00", align 4
@_oat_string955 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string955.str., i32 0, i32 0), align 4
@_oat_string949.str. = private unnamed_addr constant [ 4 x i8 ] c "def\00", align 4
@_oat_string949 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string949.str., i32 0, i32 0), align 4
@_oat_string946.str. = private unnamed_addr constant [ 4 x i8 ] c "abc\00", align 4
@_oat_string946 = global i8* getelementptr inbounds ([ 4 x i8 ]* @_oat_string946.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh320:
  call void @strs962.init(  )
  ret void
}


define i32 @program (i32 %argc969, { i32, [ 0 x i8* ] }* %argv967){

__fresh319:
  %argc_slot970 = alloca i32
  store i32 %argc969, i32* %argc_slot970
  %argv_slot968 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv967, { i32, [ 0 x i8* ] }** %argv_slot968
  %size_entry_ptr972 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs962, i32 0, i32 0
  %size973 = load i32* %size_entry_ptr972
  call void @oat_array_bounds_check( i32 %size973, i32 1 )
  %index_ptr971 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* @strs962, i32 0, i32 1, i32 1
  %size_entry_ptr975 = getelementptr { i32, [ 0 x i8* ] }* %index_ptr971, i32 0, i32 0
  %size976 = load i32* %size_entry_ptr975
  call void @oat_array_bounds_check( i32 %size976, i32 1 )
  %index_ptr974 = getelementptr { i32, [ 0 x i8* ] }* %index_ptr971, i32 0, i32 1, i32 1
  %_lhs977 = load i8** %index_ptr974
  call void @print_string( i8* %_lhs977 )
  ret i32 0
}


define void @strs962.init (){

__fresh318:
  %array_ptr942 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array943 = bitcast { i32, [ 0 x i32 ] }* %array_ptr942 to { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* 
  %array_ptr944 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array945 = bitcast { i32, [ 0 x i32 ] }* %array_ptr944 to { i32, [ 0 x i8* ] }* 
  %strval947 = load i8** @_oat_string946
  %index_ptr948 = getelementptr { i32, [ 0 x i8* ] }* %array945, i32 0, i32 1, i32 0
  store i8* %strval947, i8** %index_ptr948
  %strval950 = load i8** @_oat_string949
  %index_ptr951 = getelementptr { i32, [ 0 x i8* ] }* %array945, i32 0, i32 1, i32 1
  store i8* %strval950, i8** %index_ptr951
  %index_ptr952 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array943, i32 0, i32 1, i32 0
  store { i32, [ 0 x i8* ] }* %array945, { i32, [ 0 x i8* ] }** %index_ptr952
  %array_ptr953 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array954 = bitcast { i32, [ 0 x i32 ] }* %array_ptr953 to { i32, [ 0 x i8* ] }* 
  %strval956 = load i8** @_oat_string955
  %index_ptr957 = getelementptr { i32, [ 0 x i8* ] }* %array954, i32 0, i32 1, i32 0
  store i8* %strval956, i8** %index_ptr957
  %strval959 = load i8** @_oat_string958
  %index_ptr960 = getelementptr { i32, [ 0 x i8* ] }* %array954, i32 0, i32 1, i32 1
  store i8* %strval959, i8** %index_ptr960
  %index_ptr961 = getelementptr { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array943, i32 0, i32 1, i32 1
  store { i32, [ 0 x i8* ] }* %array954, { i32, [ 0 x i8* ] }** %index_ptr961
  store { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }* %array943, { i32, [ 0 x { i32, [ 0 x i8* ] }* ] }** @strs962
  ret void
}


