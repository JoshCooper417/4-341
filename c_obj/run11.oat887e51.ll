declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr2641 = global { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* zeroinitializer, align 4		; initialized by arr2641.init
@arr1620 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr1620.init
@i614 = global i32 1, align 4
define void @oat_init (){

__fresh251:
  call void @arr1620.init(  )
  call void @arr2641.init(  )
  ret void
}


define i32 @program (i32 %argc657, { i32, [ 0 x i8* ] }* %argv655){

__fresh250:
  %argc_slot658 = alloca i32
  store i32 %argc657, i32* %argc_slot658
  %argv_slot656 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv655, { i32, [ 0 x i8* ] }** %argv_slot656
  %c659 = alloca i32
  store i32 1, i32* %c659
  %ret660 = call { i32, [ 0 x i32 ] }* @g (  )
  %arr4661 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret660, { i32, [ 0 x i32 ] }** %arr4661
  %array_ptr662 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array663 = bitcast { i32, [ 0 x i32 ] }* %array_ptr662 to { i32, [ 0 x i32 ] }* 
  %index_ptr664 = getelementptr { i32, [ 0 x i32 ] }* %array663, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr664
  %index_ptr665 = getelementptr { i32, [ 0 x i32 ] }* %array663, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr665
  %index_ptr666 = getelementptr { i32, [ 0 x i32 ] }* %array663, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr666
  %index_ptr667 = getelementptr { i32, [ 0 x i32 ] }* %array663, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr667
  %arr3668 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array663, { i32, [ 0 x i32 ] }** %arr3668
  %_lhs669 = load i32* %c659
  %_lhs670 = load i32* @i614
  %bop671 = add i32 %_lhs669, %_lhs670
  store i32 %bop671, i32* %c659
  %_lhs672 = load i32* %c659
  %size_ptr674 = getelementptr { i32, [ 0 x i32 ] }* @arr1620, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr674, i32 1 )
  %index_ptr673 = getelementptr { i32, [ 0 x i32 ] }* @arr1620, i32 0, i32 1, i32 1
  %_lhs675 = load { i32, [ 0 x i32 ] }** @arr1620
  %bop676 = add i32 %_lhs672, %_lhs675
  store i32 %bop676, i32* %c659
  %_lhs677 = load i32* %c659
  %size_ptr679 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2641, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr679, i32 1 )
  %index_ptr678 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2641, i32 0, i32 1, i32 1
  %size_ptr681 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2641, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr681, i32 1 )
  %index_ptr680 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* @arr2641, i32 0, i32 1, i32 1
  %_lhs682 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2641
  %bop683 = add i32 %_lhs677, %_lhs682
  store i32 %bop683, i32* %c659
  %_lhs684 = load i32* %c659
  %size_ptr686 = getelementptr { i32, [ 0 x i32 ] }* %arr3668, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr686, i32 3 )
  %index_ptr685 = getelementptr { i32, [ 0 x i32 ] }* %arr3668, i32 0, i32 1, i32 3
  %_lhs687 = load { i32, [ 0 x i32 ] }** %arr3668
  %bop688 = add i32 %_lhs684, %_lhs687
  store i32 %bop688, i32* %c659
  %_lhs689 = load i32* %c659
  %_lhs690 = load { i32, [ 0 x i32 ] }** %arr3668
  %ret691 = call i32 @f ( { i32, [ 0 x i32 ] }* %_lhs690 )
  %bop692 = add i32 %_lhs689, %ret691
  store i32 %bop692, i32* %c659
  %_lhs693 = load i32* %c659
  %size_ptr695 = getelementptr { i32, [ 0 x i32 ] }* %arr4661, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr695, i32 1 )
  %index_ptr694 = getelementptr { i32, [ 0 x i32 ] }* %arr4661, i32 0, i32 1, i32 1
  %_lhs696 = load { i32, [ 0 x i32 ] }** %arr4661
  %bop697 = add i32 %_lhs693, %_lhs696
  store i32 %bop697, i32* %c659
  %_lhs698 = load i32* %c659
  ret i32 %_lhs698
}


define { i32, [ 0 x i32 ] }* @g (){

__fresh249:
  %array_ptr647 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array648 = bitcast { i32, [ 0 x i32 ] }* %array_ptr647 to { i32, [ 0 x i32 ] }* 
  %index_ptr649 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr649
  %index_ptr650 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr650
  %index_ptr651 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr651
  %index_ptr652 = getelementptr { i32, [ 0 x i32 ] }* %array648, i32 0, i32 1, i32 3
  store i32 99, i32* %index_ptr652
  %arr653 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array648, { i32, [ 0 x i32 ] }** %arr653
  %_lhs654 = load { i32, [ 0 x i32 ] }** %arr653
  ret { i32, [ 0 x i32 ] }* %_lhs654
}


define i32 @f ({ i32, [ 0 x i32 ] }* %arr642){

__fresh248:
  %arr_slot643 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %arr642, { i32, [ 0 x i32 ] }** %arr_slot643
  %size_ptr645 = getelementptr { i32, [ 0 x i32 ] }* %arr_slot643, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr645, i32 3 )
  %index_ptr644 = getelementptr { i32, [ 0 x i32 ] }* %arr_slot643, i32 0, i32 1, i32 3
  %_lhs646 = load { i32, [ 0 x i32 ] }** %arr_slot643
  ret { i32, [ 0 x i32 ] }* %_lhs646
}


define void @arr2641.init (){

__fresh247:
  %array_ptr621 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array622 = bitcast { i32, [ 0 x i32 ] }* %array_ptr621 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr623 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array624 = bitcast { i32, [ 0 x i32 ] }* %array_ptr623 to { i32, [ 0 x i32 ] }* 
  %index_ptr625 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr625
  %index_ptr626 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr626
  %index_ptr627 = getelementptr { i32, [ 0 x i32 ] }* %array624, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr627
  %index_ptr628 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array622, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array624, { i32, [ 0 x i32 ] }** %index_ptr628
  %array_ptr629 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array630 = bitcast { i32, [ 0 x i32 ] }* %array_ptr629 to { i32, [ 0 x i32 ] }* 
  %index_ptr631 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr631
  %index_ptr632 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr632
  %index_ptr633 = getelementptr { i32, [ 0 x i32 ] }* %array630, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr633
  %index_ptr634 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array622, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array630, { i32, [ 0 x i32 ] }** %index_ptr634
  %array_ptr635 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array636 = bitcast { i32, [ 0 x i32 ] }* %array_ptr635 to { i32, [ 0 x i32 ] }* 
  %index_ptr637 = getelementptr { i32, [ 0 x i32 ] }* %array636, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr637
  %index_ptr638 = getelementptr { i32, [ 0 x i32 ] }* %array636, i32 0, i32 1, i32 1
  store i32 99, i32* %index_ptr638
  %index_ptr639 = getelementptr { i32, [ 0 x i32 ] }* %array636, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr639
  %index_ptr640 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array622, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array636, { i32, [ 0 x i32 ] }** %index_ptr640
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array622, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** @arr2641
  ret void
}


define void @arr1620.init (){

__fresh246:
  %array_ptr615 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array616 = bitcast { i32, [ 0 x i32 ] }* %array_ptr615 to { i32, [ 0 x i32 ] }* 
  %index_ptr617 = getelementptr { i32, [ 0 x i32 ] }* %array616, i32 0, i32 1, i32 0
  store i32 99, i32* %index_ptr617
  %index_ptr618 = getelementptr { i32, [ 0 x i32 ] }* %array616, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr618
  %index_ptr619 = getelementptr { i32, [ 0 x i32 ] }* %array616, i32 0, i32 1, i32 2
  store i32 99, i32* %index_ptr619
  store { i32, [ 0 x i32 ] }* %array616, { i32, [ 0 x i32 ] }** @arr1620
  ret void
}


