declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh1260:
  ret void
}


define i32 @program (i32 %argc2814, { i32, [ 0 x i8* ] }* %argv2812){

__fresh1257:
  %argc_slot2815 = alloca i32
  store i32 %argc2814, i32* %argc_slot2815
  %argv_slot2813 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2812, { i32, [ 0 x i8* ] }** %argv_slot2813
  %array_ptr2816 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2817 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2816 to { i32, [ 0 x i32 ] }* 
  %index_ptr2818 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2818
  %index_ptr2819 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2819
  %index_ptr2820 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2820
  %index_ptr2821 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2821
  %index_ptr2822 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2822
  %index_ptr2823 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2823
  %index_ptr2824 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2824
  %index_ptr2825 = getelementptr { i32, [ 0 x i32 ] }* %array2817, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2825
  %ar2826 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2817, { i32, [ 0 x i32 ] }** %ar2826
  %_lhs2827 = load { i32, [ 0 x i32 ] }** %ar2826
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2827, i32 8 )
  %i2828 = alloca i32
  store i32 0, i32* %i2828
  br label %__cond1256

__cond1256:
  %_lhs2829 = load i32* %i2828
  %bop2830 = icmp slt i32 %_lhs2829, 8
  br i1 %bop2830, label %__body1255, label %__post1254

__fresh1258:
  br label %__body1255

__body1255:
  %_lhs2831 = load i32* %i2828
  %size_ptr2833 = getelementptr { i32, [ 0 x i32 ] }* %ar2826, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2833, i32 %_lhs2831 )
  %index_ptr2832 = getelementptr { i32, [ 0 x i32 ] }* %ar2826, i32 0, i32 1, i32 %_lhs2831
  %_lhs2834 = load { i32, [ 0 x i32 ] }** %ar2826
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2834 )
  %_lhs2835 = load i32* %i2828
  %bop2836 = add i32 %_lhs2835, 1
  store i32 %bop2836, i32* %i2828
  br label %__cond1256

__fresh1259:
  br label %__post1254

__post1254:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2783, i32 %s2781){

__fresh1251:
  %a_slot2784 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2783, { i32, [ 0 x i32 ] }** %a_slot2784
  %s_slot2782 = alloca i32
  store i32 %s2781, i32* %s_slot2782
  %t2785 = alloca i32
  store i32 0, i32* %t2785
  %mi2786 = alloca i32
  store i32 0, i32* %mi2786
  %i2787 = alloca i32
  store i32 0, i32* %i2787
  br label %__cond1250

__cond1250:
  %_lhs2788 = load i32* %i2787
  %_lhs2789 = load i32* %s_slot2782
  %bop2790 = icmp slt i32 %_lhs2788, %_lhs2789
  br i1 %bop2790, label %__body1249, label %__post1248

__fresh1252:
  br label %__body1249

__body1249:
  %_lhs2793 = load i32* %s_slot2782
  %_lhs2792 = load i32* %i2787
  %_lhs2791 = load { i32, [ 0 x i32 ] }** %a_slot2784
  %ret2794 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2791, i32 %_lhs2792, i32 %_lhs2793 )
  store i32 %ret2794, i32* %mi2786
  %_lhs2795 = load i32* %i2787
  %size_ptr2797 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2797, i32 %_lhs2795 )
  %index_ptr2796 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 1, i32 %_lhs2795
  %_lhs2798 = load { i32, [ 0 x i32 ] }** %a_slot2784
  store { i32, [ 0 x i32 ] }* %_lhs2798, i32* %t2785
  %_lhs2799 = load i32* %i2787
  %size_ptr2801 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2801, i32 %_lhs2799 )
  %index_ptr2800 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 1, i32 %_lhs2799
  %_lhs2802 = load i32* %mi2786
  %size_ptr2804 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2804, i32 %_lhs2802 )
  %index_ptr2803 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 1, i32 %_lhs2802
  %_lhs2805 = load { i32, [ 0 x i32 ] }** %a_slot2784
  store { i32, [ 0 x i32 ] }* %_lhs2805, { i32, [ 0 x i32 ] }** %a_slot2784
  %_lhs2806 = load i32* %mi2786
  %size_ptr2808 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2808, i32 %_lhs2806 )
  %index_ptr2807 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2784, i32 0, i32 1, i32 %_lhs2806
  %_lhs2809 = load i32* %t2785
  store i32 %_lhs2809, { i32, [ 0 x i32 ] }** %a_slot2784
  %_lhs2810 = load i32* %i2787
  %bop2811 = add i32 %_lhs2810, 1
  store i32 %bop2811, i32* %i2787
  br label %__cond1250

__fresh1253:
  br label %__post1248

__post1248:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2753, i32 %s2751, i32 %b2749){

__fresh1243:
  %a_slot2754 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2753, { i32, [ 0 x i32 ] }** %a_slot2754
  %s_slot2752 = alloca i32
  store i32 %s2751, i32* %s_slot2752
  %b_slot2750 = alloca i32
  store i32 %b2749, i32* %b_slot2750
  %_lhs2755 = load i32* %s_slot2752
  %i2756 = alloca i32
  store i32 %_lhs2755, i32* %i2756
  %_lhs2757 = load i32* %s_slot2752
  %size_ptr2759 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2754, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2759, i32 %_lhs2757 )
  %index_ptr2758 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2754, i32 0, i32 1, i32 %_lhs2757
  %_lhs2760 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %min2761 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2760, i32* %min2761
  %_lhs2762 = load i32* %s_slot2752
  %mi2763 = alloca i32
  store i32 %_lhs2762, i32* %mi2763
  br label %__cond1239

__cond1239:
  %_lhs2764 = load i32* %i2756
  %_lhs2765 = load i32* %b_slot2750
  %bop2766 = icmp slt i32 %_lhs2764, %_lhs2765
  br i1 %bop2766, label %__body1238, label %__post1237

__fresh1244:
  br label %__body1238

__body1238:
  %_lhs2767 = load i32* %i2756
  %size_ptr2769 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2754, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2769, i32 %_lhs2767 )
  %index_ptr2768 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2754, i32 0, i32 1, i32 %_lhs2767
  %_lhs2770 = load { i32, [ 0 x i32 ] }** %a_slot2754
  %_lhs2771 = load i32* %min2761
  %bop2772 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2770, %_lhs2771
  br i1 %bop2772, label %__then1242, label %__else1241

__fresh1245:
  br label %__then1242

__then1242:
  %_lhs2773 = load i32* %i2756
  %size_ptr2775 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2754, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2775, i32 %_lhs2773 )
  %index_ptr2774 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2754, i32 0, i32 1, i32 %_lhs2773
  %_lhs2776 = load { i32, [ 0 x i32 ] }** %a_slot2754
  store { i32, [ 0 x i32 ] }* %_lhs2776, i32* %min2761
  %_lhs2777 = load i32* %i2756
  store i32 %_lhs2777, i32* %mi2763
  br label %__merge1240

__fresh1246:
  br label %__else1241

__else1241:
  br label %__merge1240

__merge1240:
  %_lhs2778 = load i32* %i2756
  %bop2779 = add i32 %_lhs2778, 1
  store i32 %bop2779, i32* %i2756
  br label %__cond1239

__fresh1247:
  br label %__post1237

__post1237:
  %_lhs2780 = load i32* %mi2763
  ret i32 %_lhs2780
}


