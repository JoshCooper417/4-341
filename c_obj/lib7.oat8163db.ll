declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh819:
  ret void
}


define i32 @program (i32 %argc1758, { i32, [ 0 x i8* ] }* %argv1756){

__fresh816:
  %argc_slot1759 = alloca i32
  store i32 %argc1758, i32* %argc_slot1759
  %argv_slot1757 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1756, { i32, [ 0 x i8* ] }** %argv_slot1757
  %array_ptr1760 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1761 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1760 to { i32, [ 0 x i32 ] }* 
  %index_ptr1762 = getelementptr { i32, [ 0 x i32 ] }* %array1761, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1762
  %index_ptr1763 = getelementptr { i32, [ 0 x i32 ] }* %array1761, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1763
  %index_ptr1764 = getelementptr { i32, [ 0 x i32 ] }* %array1761, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1764
  %index_ptr1765 = getelementptr { i32, [ 0 x i32 ] }* %array1761, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1765
  %index_ptr1766 = getelementptr { i32, [ 0 x i32 ] }* %array1761, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1766
  %arr11767 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1761, { i32, [ 0 x i32 ] }** %arr11767
  %_lhs1768 = load { i32, [ 0 x i32 ] }** %arr11767
  %ret1769 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1768 )
  %str1770 = alloca i8*
  store i8* %ret1769, i8** %str1770
  %_lhs1771 = load i8** %str1770
  %ret1772 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1771 )
  %arr21773 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1772, { i32, [ 0 x i32 ] }** %arr21773
  %s1774 = alloca i32
  store i32 0, i32* %s1774
  %i1775 = alloca i32
  store i32 0, i32* %i1775
  br label %__cond815

__cond815:
  %_lhs1776 = load i32* %i1775
  %bop1777 = icmp slt i32 %_lhs1776, 5
  br i1 %bop1777, label %__body814, label %__post813

__fresh817:
  br label %__body814

__body814:
  %_lhs1778 = load i32* %s1774
  %_lhs1779 = load i32* %i1775
  %size_ptr1781 = getelementptr { i32, [ 0 x i32 ] }* %arr21773, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1781, i32 %_lhs1779 )
  %index_ptr1780 = getelementptr { i32, [ 0 x i32 ] }* %arr21773, i32 0, i32 1, i32 %_lhs1779
  %_lhs1782 = load { i32, [ 0 x i32 ] }** %arr21773
  %bop1783 = add i32 %_lhs1778, %_lhs1782
  store i32 %bop1783, i32* %s1774
  %_lhs1784 = load i32* %i1775
  %bop1785 = add i32 %_lhs1784, 1
  store i32 %bop1785, i32* %i1775
  br label %__cond815

__fresh818:
  br label %__post813

__post813:
  %_lhs1786 = load i32* %s1774
  ret i32 %_lhs1786
}


