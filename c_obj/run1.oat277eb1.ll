declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@garr440 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by garr440.init
@i427 = global i32 42, align 4
define void @oat_init (){

__fresh184:
  call void @garr440.init(  )
  ret void
}


define i32 @program (i32 %argc451, { i32, [ 0 x i8* ] }* %argv449){

__fresh181:
  %argc_slot452 = alloca i32
  store i32 %argc451, i32* %argc_slot452
  %argv_slot450 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv449, { i32, [ 0 x i8* ] }** %argv_slot450
  %array_ptr453 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array454 = bitcast { i32, [ 0 x i32 ] }* %array_ptr453 to { i32, [ 0 x i32 ] }* 
  %index_ptr455 = getelementptr { i32, [ 0 x i32 ] }* %array454, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr455
  %index_ptr456 = getelementptr { i32, [ 0 x i32 ] }* %array454, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr456
  %index_ptr457 = getelementptr { i32, [ 0 x i32 ] }* %array454, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr457
  %index_ptr458 = getelementptr { i32, [ 0 x i32 ] }* %array454, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr458
  %arr459 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array454, { i32, [ 0 x i32 ] }** %arr459
  %p460 = alloca i32
  store i32 0, i32* %p460
  %j461 = alloca i32
  store i32 0, i32* %j461
  br label %__cond180

__cond180:
  %_lhs462 = load i32* %j461
  %bop463 = icmp slt i32 %_lhs462, 100
  br i1 %bop463, label %__body179, label %__post178

__fresh182:
  br label %__body179

__body179:
  %_lhs464 = load i32* %p460
  %bop465 = add i32 %_lhs464, 1
  store i32 %bop465, i32* %p460
  %_lhs466 = load i32* %j461
  %bop467 = add i32 %_lhs466, 1
  store i32 %bop467, i32* %j461
  br label %__cond180

__fresh183:
  br label %__post178

__post178:
  %_lhs468 = load { i32, [ 0 x i32 ] }** %arr459
  %ret469 = call i32 @g ( { i32, [ 0 x i32 ] }* %_lhs468 )
  %_lhs470 = load i32* @i427
  %ret471 = call i32 @f ( i32 %_lhs470 )
  %bop472 = add i32 %ret469, %ret471
  %size_ptr474 = getelementptr { i32, [ 0 x i32 ] }* %arr459, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr474, i32 3 )
  %index_ptr473 = getelementptr { i32, [ 0 x i32 ] }* %arr459, i32 0, i32 1, i32 3
  %_lhs475 = load { i32, [ 0 x i32 ] }** %arr459
  %ret476 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs475 )
  %bop477 = add i32 %bop472, %ret476
  %size_ptr479 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr440, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr479, i32 1 )
  %index_ptr478 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr440, i32 0, i32 1, i32 1
  %size_ptr481 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr440, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr481, i32 1 )
  %index_ptr480 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @garr440, i32 0, i32 1, i32 1
  %_lhs482 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr440
  %ret483 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs482 )
  %bop484 = add i32 %bop477, %ret483
  %_lhs485 = load i32* %p460
  %ret486 = call i32 @f ( i32 %_lhs485 )
  %bop487 = add i32 %bop484, %ret486
  ret i32 %bop487
}


define i32 @g ({ i32, [ 0 x i32 ] }* %y444){

__fresh177:
  %y_slot445 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %y444, { i32, [ 0 x i32 ] }** %y_slot445
  %size_ptr447 = getelementptr { i32, [ 0 x i32 ] }* %y_slot445, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr447, i32 2 )
  %index_ptr446 = getelementptr { i32, [ 0 x i32 ] }* %y_slot445, i32 0, i32 1, i32 2
  %_lhs448 = load { i32, [ 0 x i32 ] }** %y_slot445
  ret { i32, [ 0 x i32 ] }* %_lhs448
}


define i32 @f (i32 %x441){

__fresh176:
  %x_slot442 = alloca i32
  store i32 %x441, i32* %x_slot442
  %_lhs443 = load i32* %x_slot442
  ret i32 %_lhs443
}


define void @garr440.init (){

__fresh175:
  %array_ptr428 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array429 = bitcast { i32, [ 0 x i32 ] }* %array_ptr428 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr430 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array431 = bitcast { i32, [ 0 x i32 ] }* %array_ptr430 to { i32, [ 0 x i32 ] }* 
  %index_ptr432 = getelementptr { i32, [ 0 x i32 ] }* %array431, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr432
  %index_ptr433 = getelementptr { i32, [ 0 x i32 ] }* %array431, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr433
  %index_ptr434 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array429, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array431, { i32, [ 0 x i32 ] }** %index_ptr434
  %array_ptr435 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array436 = bitcast { i32, [ 0 x i32 ] }* %array_ptr435 to { i32, [ 0 x i32 ] }* 
  %index_ptr437 = getelementptr { i32, [ 0 x i32 ] }* %array436, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr437
  %index_ptr438 = getelementptr { i32, [ 0 x i32 ] }* %array436, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr438
  %index_ptr439 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array429, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array436, { i32, [ 0 x i32 ] }** %index_ptr439
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array429, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @garr440
  ret void
}


