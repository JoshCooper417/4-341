declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1718 = global i32 1, align 4
define void @oat_init (){

__fresh558:
  ret void
}


define i32 @program (i32 %argc1724, { i32, [ 0 x i8* ] }* %argv1722){

__fresh554:
  %argc_slot1725 = alloca i32
  store i32 %argc1724, i32* %argc_slot1725
  %argv_slot1723 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1722, { i32, [ 0 x i8* ] }** %argv_slot1723
  %ret1726 = call i32 @f (  )
  %array_ptr1727 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1726 )
  %array1728 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1727 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1730
  br label %__compare551

__fresh555:
  br label %__compare551

__compare551:
  %comparison_result1731 = icmp slt i32* %index_ptr1730, %ret1726
  br i1 %comparison_result1731, label %__body552, label %__end553

__fresh556:
  br label %__body552

__body552:
  %i1732 = load i32* %index_ptr1730
  %ret1733 = call i32 @f (  )
  %index_ptr1730 = add i32* %index_ptr1730, 1
  br label %__compare551

__fresh557:
  br label %__end553

__end553:
  %b1734 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1728, { i32, [ 0 x i32 ] }** %b1734
  %_lhs1735 = load i32* @a1718
  %size_entry_ptr1737 = getelementptr { i32, [ 0 x i32 ] }* %b1734, i32 0, i32 0
  %size1738 = load i32* %size_entry_ptr1737
  call void @oat_array_bounds_check( i32 %size1738, i32 0 )
  %index_ptr1736 = getelementptr { i32, [ 0 x i32 ] }* %b1734, i32 0, i32 1, i32 0
  %_lhs1739 = load { i32, [ 0 x i32 ] }** %b1734
  %bop1740 = add i32 %_lhs1735, %_lhs1739
  %size_entry_ptr1742 = getelementptr { i32, [ 0 x i32 ] }* %b1734, i32 0, i32 0
  %size1743 = load i32* %size_entry_ptr1742
  call void @oat_array_bounds_check( i32 %size1743, i32 1 )
  %index_ptr1741 = getelementptr { i32, [ 0 x i32 ] }* %b1734, i32 0, i32 1, i32 1
  %_lhs1744 = load { i32, [ 0 x i32 ] }** %b1734
  %bop1745 = add i32 %bop1740, %_lhs1744
  ret i32 %bop1745
}


define i32 @f (){

__fresh550:
  %_lhs1719 = load i32* @a1718
  %bop1720 = add i32 %_lhs1719, 1
  store i32 %bop1720, i32* @a1718
  %_lhs1721 = load i32* @a1718
  ret i32 %_lhs1721
}


