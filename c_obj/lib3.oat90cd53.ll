declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh773:
  ret void
}


define i32 @program (i32 %argc1643, { i32, [ 0 x i8* ] }* %argv1641){

__fresh772:
  %argc_slot1644 = alloca i32
  store i32 %argc1643, i32* %argc_slot1644
  %argv_slot1642 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1641, { i32, [ 0 x i8* ] }** %argv_slot1642
  %array_ptr1645 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1646 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1645 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1647 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1648 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1647 to { i32, [ 0 x i32 ] }* 
  %index_ptr1649 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1649
  %index_ptr1650 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1650
  %index_ptr1651 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1651
  %index_ptr1652 = getelementptr { i32, [ 0 x i32 ] }* %array1648, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1652
  %index_ptr1653 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1646, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1648, { i32, [ 0 x i32 ] }** %index_ptr1653
  %array_ptr1654 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1655 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1654 to { i32, [ 0 x i32 ] }* 
  %index_ptr1656 = getelementptr { i32, [ 0 x i32 ] }* %array1655, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1656
  %index_ptr1657 = getelementptr { i32, [ 0 x i32 ] }* %array1655, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1657
  %index_ptr1658 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1646, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1655, { i32, [ 0 x i32 ] }** %index_ptr1658
  %array_ptr1659 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1660 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1659 to { i32, [ 0 x i32 ] }* 
  %index_ptr1661 = getelementptr { i32, [ 0 x i32 ] }* %array1660, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1661
  %index_ptr1662 = getelementptr { i32, [ 0 x i32 ] }* %array1660, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1662
  %index_ptr1663 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1646, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1660, { i32, [ 0 x i32 ] }** %index_ptr1663
  %array_ptr1664 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1665 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1664 to { i32, [ 0 x i32 ] }* 
  %index_ptr1666 = getelementptr { i32, [ 0 x i32 ] }* %array1665, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1666
  %index_ptr1667 = getelementptr { i32, [ 0 x i32 ] }* %array1665, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1667
  %index_ptr1668 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1646, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1665, { i32, [ 0 x i32 ] }** %index_ptr1668
  %arr1669 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1646, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1669
  %size_ptr1671 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1669, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1671, i32 0 )
  %index_ptr1670 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1669, i32 0, i32 1, i32 0
  %_lhs1672 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1669
  %len_ptr1673 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1672, i32 0, i32 0
  %len1674 = load i32* %len_ptr1673
  %len1675 = alloca i32
  store i32 %len1674, i32* %len1675
  %_lhs1676 = load i32* %len1675
  ret i32 %_lhs1676
}


