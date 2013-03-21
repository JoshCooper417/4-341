declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1566 = global i32 1, align 4
define void @oat_init (){

__fresh755:
  ret void
}


define i32 @program (i32 %argc1572, { i32, [ 0 x i8* ] }* %argv1570){

__fresh751:
  %argc_slot1573 = alloca i32
  store i32 %argc1572, i32* %argc_slot1573
  %argv_slot1571 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1570, { i32, [ 0 x i8* ] }** %argv_slot1571
  %ret1574 = call i32 @f (  )
  %array_ptr1575 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1574 )
  %array1576 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1575 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1578
  br label %__compare748

__fresh752:
  br label %__compare748

__compare748:
  %comparison_result1579 = icmp slt i32* %index_ptr1578, %ret1574
  br i1 %comparison_result1579, label %__body749, label %__end750

__fresh753:
  br label %__body749

__body749:
  %i1580 = load i32* %index_ptr1578
  %ret1581 = call i32 @f (  )
  %index_ptr1578 = add i32* %index_ptr1578, 1
  br label %__compare748

__fresh754:
  br label %__end750

__end750:
  %b1582 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1576, { i32, [ 0 x i32 ] }** %b1582
  %_lhs1583 = load i32* @a1566
  %size_ptr1585 = getelementptr { i32, [ 0 x i32 ] }* %b1582, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1585, i32 0 )
  %index_ptr1584 = getelementptr { i32, [ 0 x i32 ] }* %b1582, i32 0, i32 1, i32 0
  %_lhs1586 = load { i32, [ 0 x i32 ] }** %b1582
  %bop1587 = add i32 %_lhs1583, %_lhs1586
  %size_ptr1589 = getelementptr { i32, [ 0 x i32 ] }* %b1582, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1589, i32 1 )
  %index_ptr1588 = getelementptr { i32, [ 0 x i32 ] }* %b1582, i32 0, i32 1, i32 1
  %_lhs1590 = load { i32, [ 0 x i32 ] }** %b1582
  %bop1591 = add i32 %bop1587, %_lhs1590
  ret i32 %bop1591
}


define i32 @f (){

__fresh747:
  %_lhs1567 = load i32* @a1566
  %bop1568 = add i32 %_lhs1567, 1
  store i32 %bop1568, i32* @a1566
  %_lhs1569 = load i32* @a1566
  ret i32 %_lhs1569
}


