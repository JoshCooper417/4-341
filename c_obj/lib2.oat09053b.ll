declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh765:
  ret void
}


define i32 @program (i32 %argc1609, { i32, [ 0 x i8* ] }* %argv1607){

__fresh764:
  %argc_slot1610 = alloca i32
  store i32 %argc1609, i32* %argc_slot1610
  %argv_slot1608 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1607, { i32, [ 0 x i8* ] }** %argv_slot1608
  %array_ptr1611 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1612 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1611 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1613 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1614 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1613 to { i32, [ 0 x i32 ] }* 
  %index_ptr1615 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1615
  %index_ptr1616 = getelementptr { i32, [ 0 x i32 ] }* %array1614, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1616
  %index_ptr1617 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1612, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1614, { i32, [ 0 x i32 ] }** %index_ptr1617
  %array_ptr1618 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1619 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1618 to { i32, [ 0 x i32 ] }* 
  %index_ptr1620 = getelementptr { i32, [ 0 x i32 ] }* %array1619, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1620
  %index_ptr1621 = getelementptr { i32, [ 0 x i32 ] }* %array1619, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1621
  %index_ptr1622 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1612, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1619, { i32, [ 0 x i32 ] }** %index_ptr1622
  %array_ptr1623 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1624 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1623 to { i32, [ 0 x i32 ] }* 
  %index_ptr1625 = getelementptr { i32, [ 0 x i32 ] }* %array1624, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1625
  %index_ptr1626 = getelementptr { i32, [ 0 x i32 ] }* %array1624, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1626
  %index_ptr1627 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1612, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1624, { i32, [ 0 x i32 ] }** %index_ptr1627
  %array_ptr1628 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1629 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1628 to { i32, [ 0 x i32 ] }* 
  %index_ptr1630 = getelementptr { i32, [ 0 x i32 ] }* %array1629, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1630
  %index_ptr1631 = getelementptr { i32, [ 0 x i32 ] }* %array1629, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1631
  %index_ptr1632 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1612, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1629, { i32, [ 0 x i32 ] }** %index_ptr1632
  %arr1633 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1612, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1633
  %size_ptr1635 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1633, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1635, i32 2 )
  %index_ptr1634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1633, i32 0, i32 1, i32 2
  %_lhs1636 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1633
  %len_ptr1637 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1636, i32 0, i32 0
  %len1638 = load i32* %len_ptr1637
  %len1639 = alloca i32
  store i32 %len1638, i32* %len1639
  %_lhs1640 = load i32* %len1639
  ret i32 %_lhs1640
}


