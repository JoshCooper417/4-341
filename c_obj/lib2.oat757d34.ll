declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh562:
  ret void
}


define i32 @program (i32 %argc1763, { i32, [ 0 x i8* ] }* %argv1761){

__fresh561:
  %argc_slot1764 = alloca i32
  store i32 %argc1763, i32* %argc_slot1764
  %argv_slot1762 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1761, { i32, [ 0 x i8* ] }** %argv_slot1762
  %array_ptr1765 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1766 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1765 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1767 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1768 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1767 to { i32, [ 0 x i32 ] }* 
  %index_ptr1769 = getelementptr { i32, [ 0 x i32 ] }* %array1768, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1769
  %index_ptr1770 = getelementptr { i32, [ 0 x i32 ] }* %array1768, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1770
  %index_ptr1771 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1766, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1768, { i32, [ 0 x i32 ] }** %index_ptr1771
  %array_ptr1772 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1773 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1772 to { i32, [ 0 x i32 ] }* 
  %index_ptr1774 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1774
  %index_ptr1775 = getelementptr { i32, [ 0 x i32 ] }* %array1773, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1775
  %index_ptr1776 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1766, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1773, { i32, [ 0 x i32 ] }** %index_ptr1776
  %array_ptr1777 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1778 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1777 to { i32, [ 0 x i32 ] }* 
  %index_ptr1779 = getelementptr { i32, [ 0 x i32 ] }* %array1778, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1779
  %index_ptr1780 = getelementptr { i32, [ 0 x i32 ] }* %array1778, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1780
  %index_ptr1781 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1766, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1778, { i32, [ 0 x i32 ] }** %index_ptr1781
  %array_ptr1782 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1783 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1782 to { i32, [ 0 x i32 ] }* 
  %index_ptr1784 = getelementptr { i32, [ 0 x i32 ] }* %array1783, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1784
  %index_ptr1785 = getelementptr { i32, [ 0 x i32 ] }* %array1783, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1785
  %index_ptr1786 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1766, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1783, { i32, [ 0 x i32 ] }** %index_ptr1786
  %arr1787 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1766, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1787
  %size_entry_ptr1789 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1787, i32 0, i32 0
  %size1790 = load i32* %size_entry_ptr1789
  call void @oat_array_bounds_check( i32 %size1790, i32 2 )
  %index_ptr1788 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1787, i32 0, i32 1, i32 2
  %_lhs1791 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1787
  %len_ptr1792 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs1791, i32 0, i32 0
  %len1793 = load i32* %len_ptr1792
  %len1794 = alloca i32
  store i32 %len1793, i32* %len1794
  %_lhs1795 = load i32* %len1794
  ret i32 %_lhs1795
}


