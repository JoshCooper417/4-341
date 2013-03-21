declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a252 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by a252.init
define void @oat_init (){

__fresh80:
  call void @a252.init(  )
  ret void
}


define i32 @program (i32 %argc255, { i32, [ 0 x i8* ] }* %argv253){

__fresh75:
  %argc_slot256 = alloca i32
  store i32 %argc255, i32* %argc_slot256
  %argv_slot254 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv253, { i32, [ 0 x i8* ] }** %argv_slot254
  %s257 = alloca i32
  store i32 0, i32* %s257
  %i258 = alloca i32
  store i32 0, i32* %i258
  br label %__cond71

__cond71:
  %_lhs259 = load i32* %i258
  %bop260 = icmp slt i32 %_lhs259, 3
  br i1 %bop260, label %__body70, label %__post69

__fresh76:
  br label %__body70

__body70:
  %j261 = alloca i32
  store i32 0, i32* %j261
  br label %__cond74

__cond74:
  %_lhs262 = load i32* %j261
  %bop263 = icmp slt i32 %_lhs262, 4
  br i1 %bop263, label %__body73, label %__post72

__fresh77:
  br label %__body73

__body73:
  %_lhs264 = load i32* %s257
  %_lhs265 = load i32* %j261
  %_lhs266 = load i32* %i258
  %size_entry_ptr268 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @a252, i32 0, i32 0
  %size269 = load i32* %size_entry_ptr268
  call void @oat_array_bounds_check( i32 %size269, i32 %_lhs266 )
  %index_ptr267 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @a252, i32 0, i32 1, i32 %_lhs266
  %size_entry_ptr271 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr267, i32 0, i32 0
  %size272 = load i32* %size_entry_ptr271
  call void @oat_array_bounds_check( i32 %size272, i32 %_lhs265 )
  %index_ptr270 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr267, i32 0, i32 1, i32 %_lhs265
  %_lhs273 = load i32* %index_ptr270
  %bop274 = add i32 %_lhs264, %_lhs273
  store i32 %bop274, i32* %s257
  %_lhs275 = load i32* %j261
  %bop276 = add i32 %_lhs275, 1
  store i32 %bop276, i32* %j261
  br label %__cond74

__fresh78:
  br label %__post72

__post72:
  %_lhs277 = load i32* %i258
  %bop278 = add i32 %_lhs277, 1
  store i32 %bop278, i32* %i258
  br label %__cond71

__fresh79:
  br label %__post69

__post69:
  %_lhs279 = load i32* %s257
  ret i32 %_lhs279
}


define void @a252.init (){

__fresh68:
  %array_ptr229 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array230 = bitcast { i32, [ 0 x i32 ] }* %array_ptr229 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr231 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array232 = bitcast { i32, [ 0 x i32 ] }* %array_ptr231 to { i32, [ 0 x i32 ] }* 
  %index_ptr233 = getelementptr { i32, [ 0 x i32 ] }* %array232, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr233
  %index_ptr234 = getelementptr { i32, [ 0 x i32 ] }* %array232, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr234
  %index_ptr235 = getelementptr { i32, [ 0 x i32 ] }* %array232, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr235
  %index_ptr236 = getelementptr { i32, [ 0 x i32 ] }* %array232, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr236
  %index_ptr237 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array230, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array232, { i32, [ 0 x i32 ] }** %index_ptr237
  %array_ptr238 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array239 = bitcast { i32, [ 0 x i32 ] }* %array_ptr238 to { i32, [ 0 x i32 ] }* 
  %index_ptr240 = getelementptr { i32, [ 0 x i32 ] }* %array239, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr240
  %index_ptr241 = getelementptr { i32, [ 0 x i32 ] }* %array239, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr241
  %index_ptr242 = getelementptr { i32, [ 0 x i32 ] }* %array239, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr242
  %index_ptr243 = getelementptr { i32, [ 0 x i32 ] }* %array239, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr243
  %index_ptr244 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array230, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array239, { i32, [ 0 x i32 ] }** %index_ptr244
  %array_ptr245 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array246 = bitcast { i32, [ 0 x i32 ] }* %array_ptr245 to { i32, [ 0 x i32 ] }* 
  %index_ptr247 = getelementptr { i32, [ 0 x i32 ] }* %array246, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr247
  %index_ptr248 = getelementptr { i32, [ 0 x i32 ] }* %array246, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr248
  %index_ptr249 = getelementptr { i32, [ 0 x i32 ] }* %array246, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr249
  %index_ptr250 = getelementptr { i32, [ 0 x i32 ] }* %array246, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr250
  %index_ptr251 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array230, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array246, { i32, [ 0 x i32 ] }** %index_ptr251
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array230, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @a252
  ret void
}


