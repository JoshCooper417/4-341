declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1540 = global i32 1, align 4
define void @oat_init (){

__fresh742:
  ret void
}


define i32 @program (i32 %argc1546, { i32, [ 0 x i8* ] }* %argv1544){

__fresh738:
  %argc_slot1547 = alloca i32
  store i32 %argc1546, i32* %argc_slot1547
  %argv_slot1545 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1544, { i32, [ 0 x i8* ] }** %argv_slot1545
  %ret1548 = call i32 @f (  )
  %array_ptr1549 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1548 )
  %array1550 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1549 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1552
  br label %__compare735

__fresh739:
  br label %__compare735

__compare735:
  %comparison_result1553 = icmp slt i32* %index_ptr1552, %ret1548
  br i1 %comparison_result1553, label %__body736, label %__end737

__fresh740:
  br label %__body736

__body736:
  %i1554 = load i32* %index_ptr1552
  %_lhs1555 = load i32* %i1554
  %index_ptr1552 = add i32* %index_ptr1552, 1
  br label %__compare735

__fresh741:
  br label %__end737

__end737:
  %b1556 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1550, { i32, [ 0 x i32 ] }** %b1556
  %_lhs1557 = load i32* @a1540
  %size_ptr1559 = getelementptr { i32, [ 0 x i32 ] }* %b1556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1559, i32 0 )
  %index_ptr1558 = getelementptr { i32, [ 0 x i32 ] }* %b1556, i32 0, i32 1, i32 0
  %_lhs1560 = load { i32, [ 0 x i32 ] }** %b1556
  %bop1561 = add i32 %_lhs1557, %_lhs1560
  %size_ptr1563 = getelementptr { i32, [ 0 x i32 ] }* %b1556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1563, i32 1 )
  %index_ptr1562 = getelementptr { i32, [ 0 x i32 ] }* %b1556, i32 0, i32 1, i32 1
  %_lhs1564 = load { i32, [ 0 x i32 ] }** %b1556
  %bop1565 = add i32 %bop1561, %_lhs1564
  ret i32 %bop1565
}


define i32 @f (){

__fresh734:
  %_lhs1541 = load i32* @a1540
  %bop1542 = add i32 %_lhs1541, 1
  store i32 %bop1542, i32* @a1540
  %_lhs1543 = load i32* @a1540
  ret i32 %_lhs1543
}


