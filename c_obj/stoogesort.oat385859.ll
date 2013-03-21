declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh903:
  ret void
}


define i32 @program (i32 %argc2951, { i32, [ 0 x i8* ] }* %argv2949){

__fresh900:
  %argc_slot2952 = alloca i32
  store i32 %argc2951, i32* %argc_slot2952
  %argv_slot2950 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2949, { i32, [ 0 x i8* ] }** %argv_slot2950
  %array_ptr2953 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2954 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2953 to { i32, [ 0 x i32 ] }* 
  %index_ptr2955 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2955
  %index_ptr2956 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2956
  %index_ptr2957 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2957
  %index_ptr2958 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2958
  %unop2959 = sub i32 0, 6
  %index_ptr2960 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 4
  store i32 %unop2959, i32* %index_ptr2960
  %index_ptr2961 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2961
  %index_ptr2962 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2962
  %index_ptr2963 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2963
  %unop2964 = sub i32 0, 2
  %index_ptr2965 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 8
  store i32 %unop2964, i32* %index_ptr2965
  %unop2966 = sub i32 0, 5
  %index_ptr2967 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 9
  store i32 %unop2966, i32* %index_ptr2967
  %index_ptr2968 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2968
  %index_ptr2969 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2969
  %index_ptr2970 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2970
  %unop2971 = sub i32 0, 3
  %index_ptr2972 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 13
  store i32 %unop2971, i32* %index_ptr2972
  %index_ptr2973 = getelementptr { i32, [ 0 x i32 ] }* %array2954, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2973
  %nums2974 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2954, { i32, [ 0 x i32 ] }** %nums2974
  %i2975 = alloca i32
  store i32 0, i32* %i2975
  %_lhs2976 = load { i32, [ 0 x i32 ] }** %nums2974
  %len_ptr2977 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2976, i32 0, i32 0
  %len2978 = load i32* %len_ptr2977
  %n2979 = alloca i32
  store i32 %len2978, i32* %n2979
  %_lhs2981 = load i32* %n2979
  %bop2982 = sub i32 %_lhs2981, 1
  %_lhs2980 = load { i32, [ 0 x i32 ] }** %nums2974
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2980, i32 0, i32 %bop2982 )
  store i32 0, i32* %i2975
  br label %__cond899

__cond899:
  %_lhs2983 = load i32* %i2975
  %_lhs2984 = load i32* %n2979
  %bop2985 = sub i32 %_lhs2984, 1
  %bop2986 = icmp sle i32 %_lhs2983, %bop2985
  br i1 %bop2986, label %__body898, label %__post897

__fresh901:
  br label %__body898

__body898:
  %_lhs2987 = load i32* %i2975
  %size_entry_ptr2989 = getelementptr { i32, [ 0 x i32 ] }* %nums2974, i32 0, i32 0
  %size2990 = load i32* %size_entry_ptr2989
  call void @oat_array_bounds_check( i32 %size2990, i32 %_lhs2987 )
  %index_ptr2988 = getelementptr { i32, [ 0 x i32 ] }* %nums2974, i32 0, i32 1, i32 %_lhs2987
  %_lhs2991 = load i32* %index_ptr2988
  call void @print_int( i32 %_lhs2991 )
  %_lhs2992 = load i32* %i2975
  %bop2993 = add i32 %_lhs2992, 1
  store i32 %bop2993, i32* %i2975
  br label %__cond899

__fresh902:
  br label %__post897

__post897:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2892, i32 %i2890, i32 %j2888){

__fresh892:
  %a_slot2893 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2892, { i32, [ 0 x i32 ] }** %a_slot2893
  %i_slot2891 = alloca i32
  store i32 %i2890, i32* %i_slot2891
  %j_slot2889 = alloca i32
  store i32 %j2888, i32* %j_slot2889
  %t2894 = alloca i32
  store i32 0, i32* %t2894
  %_lhs2895 = load i32* %j_slot2889
  %size_entry_ptr2897 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 0
  %size2898 = load i32* %size_entry_ptr2897
  call void @oat_array_bounds_check( i32 %size2898, i32 %_lhs2895 )
  %index_ptr2896 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 1, i32 %_lhs2895
  %_lhs2899 = load i32* %index_ptr2896
  %_lhs2900 = load i32* %i_slot2891
  %size_entry_ptr2902 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 0
  %size2903 = load i32* %size_entry_ptr2902
  call void @oat_array_bounds_check( i32 %size2903, i32 %_lhs2900 )
  %index_ptr2901 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 1, i32 %_lhs2900
  %_lhs2904 = load i32* %index_ptr2901
  %bop2905 = icmp slt i32 %_lhs2899, %_lhs2904
  br i1 %bop2905, label %__then888, label %__else887

__fresh893:
  br label %__then888

__then888:
  %_lhs2906 = load i32* %i_slot2891
  %size_entry_ptr2908 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 0
  %size2909 = load i32* %size_entry_ptr2908
  call void @oat_array_bounds_check( i32 %size2909, i32 %_lhs2906 )
  %index_ptr2907 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 1, i32 %_lhs2906
  %_lhs2910 = load i32* %index_ptr2907
  store i32 %_lhs2910, i32* %t2894
  %_lhs2911 = load i32* %i_slot2891
  %size_entry_ptr2913 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 0
  %size2914 = load i32* %size_entry_ptr2913
  call void @oat_array_bounds_check( i32 %size2914, i32 %_lhs2911 )
  %index_ptr2912 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 1, i32 %_lhs2911
  %_lhs2915 = load i32* %j_slot2889
  %size_entry_ptr2917 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 0
  %size2918 = load i32* %size_entry_ptr2917
  call void @oat_array_bounds_check( i32 %size2918, i32 %_lhs2915 )
  %index_ptr2916 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 1, i32 %_lhs2915
  %_lhs2919 = load i32* %index_ptr2916
  store i32 %_lhs2919, i32* %index_ptr2912
  %_lhs2920 = load i32* %j_slot2889
  %size_entry_ptr2922 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 0
  %size2923 = load i32* %size_entry_ptr2922
  call void @oat_array_bounds_check( i32 %size2923, i32 %_lhs2920 )
  %index_ptr2921 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2893, i32 0, i32 1, i32 %_lhs2920
  %_lhs2924 = load i32* %t2894
  store i32 %_lhs2924, i32* %index_ptr2921
  br label %__merge886

__fresh894:
  br label %__else887

__else887:
  br label %__merge886

__merge886:
  %_lhs2925 = load i32* %j_slot2889
  %_lhs2926 = load i32* %i_slot2891
  %bop2927 = sub i32 %_lhs2925, %_lhs2926
  %bop2928 = icmp sgt i32 %bop2927, 1
  br i1 %bop2928, label %__then891, label %__else890

__fresh895:
  br label %__then891

__then891:
  %_lhs2929 = load i32* %j_slot2889
  %_lhs2930 = load i32* %i_slot2891
  %bop2931 = sub i32 %_lhs2929, %_lhs2930
  %bop2932 = add i32 %bop2931, 1
  %bop2933 = ashr i32 %bop2932, 1
  store i32 %bop2933, i32* %t2894
  %_lhs2936 = load i32* %j_slot2889
  %_lhs2937 = load i32* %t2894
  %bop2938 = sub i32 %_lhs2936, %_lhs2937
  %_lhs2935 = load i32* %i_slot2891
  %_lhs2934 = load { i32, [ 0 x i32 ] }** %a_slot2893
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2934, i32 %_lhs2935, i32 %bop2938 )
  %_lhs2943 = load i32* %j_slot2889
  %_lhs2940 = load i32* %i_slot2891
  %_lhs2941 = load i32* %t2894
  %bop2942 = add i32 %_lhs2940, %_lhs2941
  %_lhs2939 = load { i32, [ 0 x i32 ] }** %a_slot2893
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2939, i32 %bop2942, i32 %_lhs2943 )
  %_lhs2946 = load i32* %j_slot2889
  %_lhs2947 = load i32* %t2894
  %bop2948 = sub i32 %_lhs2946, %_lhs2947
  %_lhs2945 = load i32* %i_slot2891
  %_lhs2944 = load { i32, [ 0 x i32 ] }** %a_slot2893
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2944, i32 %_lhs2945, i32 %bop2948 )
  br label %__merge889

__fresh896:
  br label %__else890

__else890:
  br label %__merge889

__merge889:
  ret void
}


