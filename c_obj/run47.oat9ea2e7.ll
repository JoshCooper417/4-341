declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1690 = global i32 1, align 4
define void @oat_init (){

__fresh549:
  ret void
}


define i32 @program (i32 %argc1696, { i32, [ 0 x i8* ] }* %argv1694){

__fresh545:
  %argc_slot1697 = alloca i32
  store i32 %argc1696, i32* %argc_slot1697
  %argv_slot1695 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1694, { i32, [ 0 x i8* ] }** %argv_slot1695
  %ret1698 = call i32 @f (  )
  %array_ptr1699 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %ret1698 )
  %array1700 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1699 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr1702
  br label %__compare542

__fresh546:
  br label %__compare542

__compare542:
  %comparison_result1703 = icmp slt i32* %index_ptr1702, %ret1698
  br i1 %comparison_result1703, label %__body543, label %__end544

__fresh547:
  br label %__body543

__body543:
  %i1704 = load i32* %index_ptr1702
  %_lhs1705 = load i32* %i1704
  %index_ptr1702 = add i32* %index_ptr1702, 1
  br label %__compare542

__fresh548:
  br label %__end544

__end544:
  %b1706 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1700, { i32, [ 0 x i32 ] }** %b1706
  %_lhs1707 = load i32* @a1690
  %size_entry_ptr1709 = getelementptr { i32, [ 0 x i32 ] }* %b1706, i32 0, i32 0
  %size1710 = load i32* %size_entry_ptr1709
  call void @oat_array_bounds_check( i32 %size1710, i32 0 )
  %index_ptr1708 = getelementptr { i32, [ 0 x i32 ] }* %b1706, i32 0, i32 1, i32 0
  %_lhs1711 = load i32* %index_ptr1708
  %bop1712 = add i32 %_lhs1707, %_lhs1711
  %size_entry_ptr1714 = getelementptr { i32, [ 0 x i32 ] }* %b1706, i32 0, i32 0
  %size1715 = load i32* %size_entry_ptr1714
  call void @oat_array_bounds_check( i32 %size1715, i32 1 )
  %index_ptr1713 = getelementptr { i32, [ 0 x i32 ] }* %b1706, i32 0, i32 1, i32 1
  %_lhs1716 = load i32* %index_ptr1713
  %bop1717 = add i32 %bop1712, %_lhs1716
  ret i32 %bop1717
}


define i32 @f (){

__fresh541:
  %_lhs1691 = load i32* @a1690
  %bop1692 = add i32 %_lhs1691, 1
  store i32 %bop1692, i32* @a1690
  %_lhs1693 = load i32* @a1690
  ret i32 %_lhs1693
}


