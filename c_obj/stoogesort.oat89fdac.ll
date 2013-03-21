declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1223:
  ret void
}


define i32 @program (i32 %argc2707, { i32, [ 0 x i8* ] }* %argv2705){

__fresh1220:
  %argc_slot2708 = alloca i32
  store i32 %argc2707, i32* %argc_slot2708
  %argv_slot2706 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2705, { i32, [ 0 x i8* ] }** %argv_slot2706
  %array_ptr2709 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2710 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2709 to { i32, [ 0 x i32 ] }* 
  %index_ptr2711 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2711
  %index_ptr2712 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2712
  %index_ptr2713 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2713
  %index_ptr2714 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2714
  %unop2715 = sub i32 0, 6
  %index_ptr2716 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 4
  store i32 %unop2715, i32* %index_ptr2716
  %index_ptr2717 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2717
  %index_ptr2718 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2718
  %index_ptr2719 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2719
  %unop2720 = sub i32 0, 2
  %index_ptr2721 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 8
  store i32 %unop2720, i32* %index_ptr2721
  %unop2722 = sub i32 0, 5
  %index_ptr2723 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 9
  store i32 %unop2722, i32* %index_ptr2723
  %index_ptr2724 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2724
  %index_ptr2725 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2725
  %index_ptr2726 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2726
  %unop2727 = sub i32 0, 3
  %index_ptr2728 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 13
  store i32 %unop2727, i32* %index_ptr2728
  %index_ptr2729 = getelementptr { i32, [ 0 x i32 ] }* %array2710, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2729
  %nums2730 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2710, { i32, [ 0 x i32 ] }** %nums2730
  %i2731 = alloca i32
  store i32 0, i32* %i2731
  %_lhs2732 = load { i32, [ 0 x i32 ] }** %nums2730
  %len_ptr2733 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2732, i32 0, i32 0
  %len2734 = load i32* %len_ptr2733
  %n2735 = alloca i32
  store i32 %len2734, i32* %n2735
  %_lhs2737 = load i32* %n2735
  %bop2738 = sub i32 %_lhs2737, 1
  %_lhs2736 = load { i32, [ 0 x i32 ] }** %nums2730
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2736, i32 0, i32 %bop2738 )
  store i32 0, i32* %i2731
  br label %__cond1219

__cond1219:
  %_lhs2739 = load i32* %i2731
  %_lhs2740 = load i32* %n2735
  %bop2741 = sub i32 %_lhs2740, 1
  %bop2742 = icmp sle i32 %_lhs2739, %bop2741
  br i1 %bop2742, label %__body1218, label %__post1217

__fresh1221:
  br label %__body1218

__body1218:
  %_lhs2743 = load i32* %i2731
  %size_ptr2745 = getelementptr { i32, [ 0 x i32 ] }* %nums2730, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2745, i32 %_lhs2743 )
  %index_ptr2744 = getelementptr { i32, [ 0 x i32 ] }* %nums2730, i32 0, i32 1, i32 %_lhs2743
  %_lhs2746 = load { i32, [ 0 x i32 ] }** %nums2730
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2746 )
  %_lhs2747 = load i32* %i2731
  %bop2748 = add i32 %_lhs2747, 1
  store i32 %bop2748, i32* %i2731
  br label %__cond1219

__fresh1222:
  br label %__post1217

__post1217:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2654, i32 %i2652, i32 %j2650){

__fresh1212:
  %a_slot2655 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2654, { i32, [ 0 x i32 ] }** %a_slot2655
  %i_slot2653 = alloca i32
  store i32 %i2652, i32* %i_slot2653
  %j_slot2651 = alloca i32
  store i32 %j2650, i32* %j_slot2651
  %t2656 = alloca i32
  store i32 0, i32* %t2656
  %_lhs2657 = load i32* %j_slot2651
  %size_ptr2659 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2659, i32 %_lhs2657 )
  %index_ptr2658 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 1, i32 %_lhs2657
  %_lhs2660 = load { i32, [ 0 x i32 ] }** %a_slot2655
  %_lhs2661 = load i32* %i_slot2653
  %size_ptr2663 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2663, i32 %_lhs2661 )
  %index_ptr2662 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 1, i32 %_lhs2661
  %_lhs2664 = load { i32, [ 0 x i32 ] }** %a_slot2655
  %bop2665 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2660, %_lhs2664
  br i1 %bop2665, label %__then1208, label %__else1207

__fresh1213:
  br label %__then1208

__then1208:
  %_lhs2666 = load i32* %i_slot2653
  %size_ptr2668 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2668, i32 %_lhs2666 )
  %index_ptr2667 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 1, i32 %_lhs2666
  %_lhs2669 = load { i32, [ 0 x i32 ] }** %a_slot2655
  store { i32, [ 0 x i32 ] }* %_lhs2669, i32* %t2656
  %_lhs2670 = load i32* %i_slot2653
  %size_ptr2672 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2672, i32 %_lhs2670 )
  %index_ptr2671 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 1, i32 %_lhs2670
  %_lhs2673 = load i32* %j_slot2651
  %size_ptr2675 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2675, i32 %_lhs2673 )
  %index_ptr2674 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 1, i32 %_lhs2673
  %_lhs2676 = load { i32, [ 0 x i32 ] }** %a_slot2655
  store { i32, [ 0 x i32 ] }* %_lhs2676, { i32, [ 0 x i32 ] }** %a_slot2655
  %_lhs2677 = load i32* %j_slot2651
  %size_ptr2679 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2679, i32 %_lhs2677 )
  %index_ptr2678 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2655, i32 0, i32 1, i32 %_lhs2677
  %_lhs2680 = load i32* %t2656
  store i32 %_lhs2680, { i32, [ 0 x i32 ] }** %a_slot2655
  br label %__merge1206

__fresh1214:
  br label %__else1207

__else1207:
  br label %__merge1206

__merge1206:
  %_lhs2681 = load i32* %j_slot2651
  %_lhs2682 = load i32* %i_slot2653
  %bop2683 = sub i32 %_lhs2681, %_lhs2682
  %bop2684 = icmp sgt i32 %bop2683, 1
  br i1 %bop2684, label %__then1211, label %__else1210

__fresh1215:
  br label %__then1211

__then1211:
  %_lhs2685 = load i32* %j_slot2651
  %_lhs2686 = load i32* %i_slot2653
  %bop2687 = sub i32 %_lhs2685, %_lhs2686
  %bop2688 = add i32 %bop2687, 1
  %bop2689 = ashr i32 %bop2688, 1
  store i32 %bop2689, i32* %t2656
  %_lhs2692 = load i32* %j_slot2651
  %_lhs2693 = load i32* %t2656
  %bop2694 = sub i32 %_lhs2692, %_lhs2693
  %_lhs2691 = load i32* %i_slot2653
  %_lhs2690 = load { i32, [ 0 x i32 ] }** %a_slot2655
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2690, i32 %_lhs2691, i32 %bop2694 )
  %_lhs2699 = load i32* %j_slot2651
  %_lhs2696 = load i32* %i_slot2653
  %_lhs2697 = load i32* %t2656
  %bop2698 = add i32 %_lhs2696, %_lhs2697
  %_lhs2695 = load { i32, [ 0 x i32 ] }** %a_slot2655
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2695, i32 %bop2698, i32 %_lhs2699 )
  %_lhs2702 = load i32* %j_slot2651
  %_lhs2703 = load i32* %t2656
  %bop2704 = sub i32 %_lhs2702, %_lhs2703
  %_lhs2701 = load i32* %i_slot2653
  %_lhs2700 = load { i32, [ 0 x i32 ] }** %a_slot2655
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2700, i32 %_lhs2701, i32 %bop2704 )
  br label %__merge1209

__fresh1216:
  br label %__else1210

__else1210:
  br label %__merge1209

__merge1209:
  ret void
}


