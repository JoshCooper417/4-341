declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2686 = global i32 8, align 4
@b2685 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2685.init
define void @oat_init (){

__fresh871:
  call void @b2685.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2820, i32 %i2818, i32 %n2816){

__fresh862:
  %a_slot2821 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2820, { i32, [ 0 x i32 ] }** %a_slot2821
  %i_slot2819 = alloca i32
  store i32 %i2818, i32* %i_slot2819
  %n_slot2817 = alloca i32
  store i32 %n2816, i32* %n_slot2817
  %_lhs2822 = load i32* %i_slot2819
  %size_entry_ptr2824 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2825 = load i32* %size_entry_ptr2824
  call void @oat_array_bounds_check( i32 %size2825, i32 %_lhs2822 )
  %index_ptr2823 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %_lhs2822
  %_lhs2826 = load { i32, [ 0 x i32 ] }** %a_slot2821
  %v2827 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2826, i32* %v2827
  %_lhs2828 = load i32* %i_slot2819
  %bop2829 = mul i32 %_lhs2828, 2
  %j2830 = alloca i32
  store i32 %bop2829, i32* %j2830
  %done2831 = alloca i32
  store i32 0, i32* %done2831
  br label %__cond852

__cond852:
  %_lhs2832 = load i32* %j2830
  %_lhs2833 = load i32* %n_slot2817
  %bop2834 = icmp sle i32 %_lhs2832, %_lhs2833
  %_lhs2835 = load i32* %done2831
  %bop2836 = icmp eq i32 %_lhs2835, 0
  %bop2837 = and i1 %bop2834, %bop2836
  br i1 %bop2837, label %__body851, label %__post850

__fresh863:
  br label %__body851

__body851:
  %_lhs2838 = load i32* %j2830
  %_lhs2839 = load i32* %n_slot2817
  %bop2840 = icmp slt i32 %_lhs2838, %_lhs2839
  %_lhs2841 = load i32* %j2830
  %size_entry_ptr2843 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2844 = load i32* %size_entry_ptr2843
  call void @oat_array_bounds_check( i32 %size2844, i32 %_lhs2841 )
  %index_ptr2842 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %_lhs2841
  %_lhs2845 = load { i32, [ 0 x i32 ] }** %a_slot2821
  %_lhs2846 = load i32* %j2830
  %bop2847 = add i32 %_lhs2846, 1
  %size_entry_ptr2849 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2850 = load i32* %size_entry_ptr2849
  call void @oat_array_bounds_check( i32 %size2850, i32 %bop2847 )
  %index_ptr2848 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %bop2847
  %_lhs2851 = load { i32, [ 0 x i32 ] }** %a_slot2821
  %bop2852 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2845, %_lhs2851
  %bop2853 = and i1 %bop2840, %bop2852
  br i1 %bop2853, label %__then855, label %__else854

__fresh864:
  br label %__then855

__then855:
  %_lhs2854 = load i32* %j2830
  %bop2855 = add i32 %_lhs2854, 1
  store i32 %bop2855, i32* %j2830
  br label %__merge853

__fresh865:
  br label %__else854

__else854:
  br label %__merge853

__merge853:
  %_lhs2856 = load i32* %j2830
  %size_entry_ptr2858 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2859 = load i32* %size_entry_ptr2858
  call void @oat_array_bounds_check( i32 %size2859, i32 %_lhs2856 )
  %index_ptr2857 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %_lhs2856
  %_lhs2860 = load { i32, [ 0 x i32 ] }** %a_slot2821
  %_lhs2861 = load i32* %j2830
  %bop2862 = ashr i32 %_lhs2861, 1
  %size_entry_ptr2864 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2865 = load i32* %size_entry_ptr2864
  call void @oat_array_bounds_check( i32 %size2865, i32 %bop2862 )
  %index_ptr2863 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %bop2862
  %_lhs2866 = load { i32, [ 0 x i32 ] }** %a_slot2821
  %bop2867 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2860, %_lhs2866
  br i1 %bop2867, label %__then858, label %__else857

__fresh866:
  br label %__then858

__then858:
  store i32 1, i32* %done2831
  br label %__merge856

__fresh867:
  br label %__else857

__else857:
  br label %__merge856

__merge856:
  %_lhs2868 = load i32* %done2831
  %bop2869 = icmp eq i32 %_lhs2868, 0
  br i1 %bop2869, label %__then861, label %__else860

__fresh868:
  br label %__then861

__then861:
  %_lhs2870 = load i32* %j2830
  %bop2871 = ashr i32 %_lhs2870, 1
  %size_entry_ptr2873 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2874 = load i32* %size_entry_ptr2873
  call void @oat_array_bounds_check( i32 %size2874, i32 %bop2871 )
  %index_ptr2872 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %bop2871
  %_lhs2875 = load i32* %j2830
  %size_entry_ptr2877 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2878 = load i32* %size_entry_ptr2877
  call void @oat_array_bounds_check( i32 %size2878, i32 %_lhs2875 )
  %index_ptr2876 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %_lhs2875
  %_lhs2879 = load { i32, [ 0 x i32 ] }** %a_slot2821
  store { i32, [ 0 x i32 ] }* %_lhs2879, { i32, [ 0 x i32 ] }** %a_slot2821
  %_lhs2880 = load i32* %j2830
  %bop2881 = mul i32 %_lhs2880, 2
  store i32 %bop2881, i32* %j2830
  br label %__merge859

__fresh869:
  br label %__else860

__else860:
  br label %__merge859

__merge859:
  br label %__cond852

__fresh870:
  br label %__post850

__post850:
  %_lhs2882 = load i32* %j2830
  %bop2883 = ashr i32 %_lhs2882, 1
  %size_entry_ptr2885 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 0
  %size2886 = load i32* %size_entry_ptr2885
  call void @oat_array_bounds_check( i32 %size2886, i32 %bop2883 )
  %index_ptr2884 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2821, i32 0, i32 1, i32 %bop2883
  %_lhs2887 = load i32* %v2827
  store i32 %_lhs2887, { i32, [ 0 x i32 ] }** %a_slot2821
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2780, i32 %i2778){

__fresh847:
  %a_slot2781 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2780, { i32, [ 0 x i32 ] }** %a_slot2781
  %i_slot2779 = alloca i32
  store i32 %i2778, i32* %i_slot2779
  %_lhs2782 = load i32* %i_slot2779
  %size_entry_ptr2784 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 0
  %size2785 = load i32* %size_entry_ptr2784
  call void @oat_array_bounds_check( i32 %size2785, i32 %_lhs2782 )
  %index_ptr2783 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 1, i32 %_lhs2782
  %_lhs2786 = load { i32, [ 0 x i32 ] }** %a_slot2781
  %v2787 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2786, i32* %v2787
  br label %__cond846

__cond846:
  %_lhs2788 = load i32* %i_slot2779
  %bop2789 = icmp sgt i32 %_lhs2788, 1
  %_lhs2790 = load i32* %i_slot2779
  %bop2791 = ashr i32 %_lhs2790, 1
  %size_entry_ptr2793 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 0
  %size2794 = load i32* %size_entry_ptr2793
  call void @oat_array_bounds_check( i32 %size2794, i32 %bop2791 )
  %index_ptr2792 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 1, i32 %bop2791
  %_lhs2795 = load { i32, [ 0 x i32 ] }** %a_slot2781
  %_lhs2796 = load i32* %v2787
  %bop2797 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2795, %_lhs2796
  %bop2798 = and i1 %bop2789, %bop2797
  br i1 %bop2798, label %__body845, label %__post844

__fresh848:
  br label %__body845

__body845:
  %_lhs2799 = load i32* %i_slot2779
  %size_entry_ptr2801 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 0
  %size2802 = load i32* %size_entry_ptr2801
  call void @oat_array_bounds_check( i32 %size2802, i32 %_lhs2799 )
  %index_ptr2800 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 1, i32 %_lhs2799
  %_lhs2803 = load i32* %i_slot2779
  %bop2804 = ashr i32 %_lhs2803, 1
  %size_entry_ptr2806 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 0
  %size2807 = load i32* %size_entry_ptr2806
  call void @oat_array_bounds_check( i32 %size2807, i32 %bop2804 )
  %index_ptr2805 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 1, i32 %bop2804
  %_lhs2808 = load { i32, [ 0 x i32 ] }** %a_slot2781
  store { i32, [ 0 x i32 ] }* %_lhs2808, { i32, [ 0 x i32 ] }** %a_slot2781
  %_lhs2809 = load i32* %i_slot2779
  %bop2810 = ashr i32 %_lhs2809, 1
  store i32 %bop2810, i32* %i_slot2779
  br label %__cond846

__fresh849:
  br label %__post844

__post844:
  %_lhs2811 = load i32* %i_slot2779
  %size_entry_ptr2813 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 0
  %size2814 = load i32* %size_entry_ptr2813
  call void @oat_array_bounds_check( i32 %size2814, i32 %_lhs2811 )
  %index_ptr2812 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2781, i32 0, i32 1, i32 %_lhs2811
  %_lhs2815 = load i32* %v2787
  store i32 %_lhs2815, { i32, [ 0 x i32 ] }** %a_slot2781
  ret void
}


define i32 @program (i32 %argc2689, { i32, [ 0 x i8* ] }* %argv2687){

__fresh832:
  %argc_slot2690 = alloca i32
  store i32 %argc2689, i32* %argc_slot2690
  %argv_slot2688 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2687, { i32, [ 0 x i8* ] }** %argv_slot2688
  %array_ptr2691 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2692 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2691 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2694
  br label %__compare817

__fresh833:
  br label %__compare817

__compare817:
  %comparison_result2695 = icmp slt i32* %index_ptr2694, 9
  br i1 %comparison_result2695, label %__body818, label %__end819

__fresh834:
  br label %__body818

__body818:
  %i2696 = load i32* %index_ptr2694
  %index_ptr2694 = add i32* %index_ptr2694, 1
  br label %__compare817

__fresh835:
  br label %__end819

__end819:
  %a2697 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2692, { i32, [ 0 x i32 ] }** %a2697
  %i2698 = alloca i32
  store i32 0, i32* %i2698
  %j2699 = alloca i32
  store i32 0, i32* %j2699
  %k2700 = alloca i32
  store i32 0, i32* %k2700
  %r2701 = alloca i32
  store i32 0, i32* %r2701
  %size_entry_ptr2703 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2704 = load i32* %size_entry_ptr2703
  call void @oat_array_bounds_check( i32 %size2704, i32 0 )
  %index_ptr2702 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 0
  %_lhs2705 = load { i32, [ 0 x i32 ] }** %a2697
  %check2706 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2705, i32* %check2706
  %size_entry_ptr2708 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2709 = load i32* %size_entry_ptr2708
  call void @oat_array_bounds_check( i32 %size2709, i32 0 )
  %index_ptr2707 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 0
  %size_entry_ptr2711 = getelementptr { i32, [ 0 x i32 ] }* @b2685, i32 0, i32 0
  %size2712 = load i32* %size_entry_ptr2711
  call void @oat_array_bounds_check( i32 %size2712, i32 0 )
  %index_ptr2710 = getelementptr { i32, [ 0 x i32 ] }* @b2685, i32 0, i32 1, i32 0
  %_lhs2713 = load { i32, [ 0 x i32 ] }** @b2685
  store { i32, [ 0 x i32 ] }* %_lhs2713, { i32, [ 0 x i32 ] }** %a2697
  store i32 1, i32* %i2698
  br label %__cond822

__cond822:
  %_lhs2714 = load i32* %i2698
  %_lhs2715 = load i32* @n2686
  %bop2716 = icmp sle i32 %_lhs2714, %_lhs2715
  br i1 %bop2716, label %__body821, label %__post820

__fresh836:
  br label %__body821

__body821:
  %_lhs2717 = load i32* %i2698
  %size_entry_ptr2719 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2720 = load i32* %size_entry_ptr2719
  call void @oat_array_bounds_check( i32 %size2720, i32 %_lhs2717 )
  %index_ptr2718 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 %_lhs2717
  %_lhs2721 = load i32* %i2698
  %size_entry_ptr2723 = getelementptr { i32, [ 0 x i32 ] }* @b2685, i32 0, i32 0
  %size2724 = load i32* %size_entry_ptr2723
  call void @oat_array_bounds_check( i32 %size2724, i32 %_lhs2721 )
  %index_ptr2722 = getelementptr { i32, [ 0 x i32 ] }* @b2685, i32 0, i32 1, i32 %_lhs2721
  %_lhs2725 = load { i32, [ 0 x i32 ] }** @b2685
  %unop2726 = sub i32 0, %_lhs2725
  store i32 %unop2726, { i32, [ 0 x i32 ] }** %a2697
  %_lhs2728 = load i32* %i2698
  %_lhs2727 = load { i32, [ 0 x i32 ] }** %a2697
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2727, i32 %_lhs2728 )
  %_lhs2729 = load i32* %i2698
  %bop2730 = add i32 %_lhs2729, 1
  store i32 %bop2730, i32* %i2698
  br label %__cond822

__fresh837:
  br label %__post820

__post820:
  %_lhs2731 = load i32* @n2686
  store i32 %_lhs2731, i32* %j2699
  store i32 1, i32* %i2698
  br label %__cond825

__cond825:
  %_lhs2732 = load i32* %i2698
  %_lhs2733 = load i32* %j2699
  %bop2734 = icmp sle i32 %_lhs2732, %_lhs2733
  br i1 %bop2734, label %__body824, label %__post823

__fresh838:
  br label %__body824

__body824:
  %temp2735 = alloca i32
  store i32 0, i32* %temp2735
  %size_entry_ptr2737 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2738 = load i32* %size_entry_ptr2737
  call void @oat_array_bounds_check( i32 %size2738, i32 1 )
  %index_ptr2736 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 1
  %_lhs2739 = load { i32, [ 0 x i32 ] }** %a2697
  store { i32, [ 0 x i32 ] }* %_lhs2739, i32* %temp2735
  %size_entry_ptr2741 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2742 = load i32* %size_entry_ptr2741
  call void @oat_array_bounds_check( i32 %size2742, i32 1 )
  %index_ptr2740 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 1
  %_lhs2743 = load i32* @n2686
  %size_entry_ptr2745 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2746 = load i32* %size_entry_ptr2745
  call void @oat_array_bounds_check( i32 %size2746, i32 %_lhs2743 )
  %index_ptr2744 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 %_lhs2743
  %_lhs2747 = load { i32, [ 0 x i32 ] }** %a2697
  store { i32, [ 0 x i32 ] }* %_lhs2747, { i32, [ 0 x i32 ] }** %a2697
  %_lhs2748 = load i32* @n2686
  %size_entry_ptr2750 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2751 = load i32* %size_entry_ptr2750
  call void @oat_array_bounds_check( i32 %size2751, i32 %_lhs2748 )
  %index_ptr2749 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 %_lhs2748
  %_lhs2752 = load i32* %temp2735
  store i32 %_lhs2752, { i32, [ 0 x i32 ] }** %a2697
  %_lhs2753 = load i32* @n2686
  %bop2754 = sub i32 %_lhs2753, 1
  store i32 %bop2754, i32* @n2686
  %_lhs2756 = load i32* @n2686
  %_lhs2755 = load { i32, [ 0 x i32 ] }** %a2697
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2755, i32 1, i32 %_lhs2756 )
  %_lhs2757 = load i32* %i2698
  %bop2758 = add i32 %_lhs2757, 1
  store i32 %bop2758, i32* %i2698
  br label %__cond825

__fresh839:
  br label %__post823

__post823:
  %_lhs2759 = load i32* %j2699
  store i32 %_lhs2759, i32* @n2686
  store i32 1, i32* %i2698
  br label %__cond828

__cond828:
  %_lhs2760 = load i32* %i2698
  %_lhs2761 = load i32* @n2686
  %bop2762 = icmp sle i32 %_lhs2760, %_lhs2761
  br i1 %bop2762, label %__body827, label %__post826

__fresh840:
  br label %__body827

__body827:
  %_lhs2763 = load i32* %i2698
  %size_entry_ptr2765 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2766 = load i32* %size_entry_ptr2765
  call void @oat_array_bounds_check( i32 %size2766, i32 %_lhs2763 )
  %index_ptr2764 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 %_lhs2763
  %_lhs2767 = load { i32, [ 0 x i32 ] }** %a2697
  %_lhs2768 = load i32* %check2706
  %bop2769 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2767, %_lhs2768
  br i1 %bop2769, label %__then831, label %__else830

__fresh841:
  br label %__then831

__then831:
  %_lhs2770 = load i32* %i2698
  %size_entry_ptr2772 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 0
  %size2773 = load i32* %size_entry_ptr2772
  call void @oat_array_bounds_check( i32 %size2773, i32 %_lhs2770 )
  %index_ptr2771 = getelementptr { i32, [ 0 x i32 ] }* %a2697, i32 0, i32 1, i32 %_lhs2770
  %_lhs2774 = load { i32, [ 0 x i32 ] }** %a2697
  store { i32, [ 0 x i32 ] }* %_lhs2774, i32* %check2706
  br label %__merge829

__fresh842:
  br label %__else830

__else830:
  store i32 1, i32* %r2701
  br label %__merge829

__merge829:
  %_lhs2775 = load i32* %i2698
  %bop2776 = add i32 %_lhs2775, 1
  store i32 %bop2776, i32* %i2698
  br label %__cond828

__fresh843:
  br label %__post826

__post826:
  %_lhs2777 = load i32* %r2701
  ret i32 %_lhs2777
}


define void @b2685.init (){

__fresh816:
  %array_ptr2666 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2667 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2666 to { i32, [ 0 x i32 ] }* 
  %index_ptr2668 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2668
  %unop2669 = sub i32 0, 110
  %index_ptr2670 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 1
  store i32 %unop2669, i32* %index_ptr2670
  %unop2671 = sub i32 0, 111
  %index_ptr2672 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 2
  store i32 %unop2671, i32* %index_ptr2672
  %unop2673 = sub i32 0, 109
  %index_ptr2674 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 3
  store i32 %unop2673, i32* %index_ptr2674
  %unop2675 = sub i32 0, 117
  %index_ptr2676 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 4
  store i32 %unop2675, i32* %index_ptr2676
  %unop2677 = sub i32 0, 119
  %index_ptr2678 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 5
  store i32 %unop2677, i32* %index_ptr2678
  %unop2679 = sub i32 0, 113
  %index_ptr2680 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 6
  store i32 %unop2679, i32* %index_ptr2680
  %unop2681 = sub i32 0, 120
  %index_ptr2682 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 7
  store i32 %unop2681, i32* %index_ptr2682
  %unop2683 = sub i32 0, 108
  %index_ptr2684 = getelementptr { i32, [ 0 x i32 ] }* %array2667, i32 0, i32 1, i32 8
  store i32 %unop2683, i32* %index_ptr2684
  store { i32, [ 0 x i32 ] }* %array2667, { i32, [ 0 x i32 ] }** @b2685
  ret void
}


