declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh565:
  ret void
}


define i32 @program (i32 %argc1798, { i32, [ 0 x i8* ] }* %argv1796){

__fresh564:
  %argc_slot1799 = alloca i32
  store i32 %argc1798, i32* %argc_slot1799
  %argv_slot1797 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1796, { i32, [ 0 x i8* ] }** %argv_slot1797
  %array_ptr1800 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1801 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1800 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr1802 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array1803 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1802 to { i32, [ 0 x i32 ] }* 
  %index_ptr1804 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr1804
  %index_ptr1805 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr1805
  %index_ptr1806 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr1806
  %index_ptr1807 = getelementptr { i32, [ 0 x i32 ] }* %array1803, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr1807
  %index_ptr1808 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1801, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array1803, { i32, [ 0 x i32 ] }** %index_ptr1808
  %array_ptr1809 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1810 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1809 to { i32, [ 0 x i32 ] }* 
  %index_ptr1811 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr1811
  %index_ptr1812 = getelementptr { i32, [ 0 x i32 ] }* %array1810, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr1812
  %index_ptr1813 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1801, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array1810, { i32, [ 0 x i32 ] }** %index_ptr1813
  %array_ptr1814 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1815 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1814 to { i32, [ 0 x i32 ] }* 
  %index_ptr1816 = getelementptr { i32, [ 0 x i32 ] }* %array1815, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr1816
  %index_ptr1817 = getelementptr { i32, [ 0 x i32 ] }* %array1815, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr1817
  %index_ptr1818 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1801, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array1815, { i32, [ 0 x i32 ] }** %index_ptr1818
  %array_ptr1819 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array1820 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1819 to { i32, [ 0 x i32 ] }* 
  %index_ptr1821 = getelementptr { i32, [ 0 x i32 ] }* %array1820, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr1821
  %index_ptr1822 = getelementptr { i32, [ 0 x i32 ] }* %array1820, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr1822
  %index_ptr1823 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1801, i32 0, i32 1, i32 3
  store { i32, [ 0 x i32 ] }* %array1820, { i32, [ 0 x i32 ] }** %index_ptr1823
  %arr1824 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array1801, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr1824
  %size_entry_ptr1826 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1824, i32 0, i32 0
  %size1827 = load i32* %size_entry_ptr1826
  call void @oat_array_bounds_check( i32 %size1827, i32 0 )
  %index_ptr1825 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr1824, i32 0, i32 1, i32 0
  %_lhs1828 = load { i32, [ 0 x i32 ] }** %index_ptr1825
  %len_ptr1829 = getelementptr { i32, [ 0 x i32 ] }* %_lhs1828, i32 0, i32 0
  %len1830 = load i32* %len_ptr1829
  %len1831 = alloca i32
  store i32 %len1830, i32* %len1831
  %_lhs1832 = load i32* %len1831
  ret i32 %_lhs1832
}


