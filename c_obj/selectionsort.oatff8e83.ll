declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh928:
  ret void
}


define i32 @program (i32 %argc3066, { i32, [ 0 x i8* ] }* %argv3064){

__fresh925:
  %argc_slot3067 = alloca i32
  store i32 %argc3066, i32* %argc_slot3067
  %argv_slot3065 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3064, { i32, [ 0 x i8* ] }** %argv_slot3065
  %array_ptr3068 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array3069 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3068 to { i32, [ 0 x i32 ] }* 
  %index_ptr3070 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr3070
  %index_ptr3071 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr3071
  %index_ptr3072 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3072
  %index_ptr3073 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr3073
  %index_ptr3074 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr3074
  %index_ptr3075 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr3075
  %index_ptr3076 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr3076
  %index_ptr3077 = getelementptr { i32, [ 0 x i32 ] }* %array3069, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr3077
  %ar3078 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array3069, { i32, [ 0 x i32 ] }** %ar3078
  %_lhs3079 = load { i32, [ 0 x i32 ] }** %ar3078
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs3079, i32 8 )
  %i3080 = alloca i32
  store i32 0, i32* %i3080
  br label %__cond924

__cond924:
  %_lhs3081 = load i32* %i3080
  %bop3082 = icmp slt i32 %_lhs3081, 8
  br i1 %bop3082, label %__body923, label %__post922

__fresh926:
  br label %__body923

__body923:
  %_lhs3083 = load i32* %i3080
  %size_entry_ptr3085 = getelementptr { i32, [ 0 x i32 ] }* %ar3078, i32 0, i32 0
  %size3086 = load i32* %size_entry_ptr3085
  call void @oat_array_bounds_check( i32 %size3086, i32 %_lhs3083 )
  %index_ptr3084 = getelementptr { i32, [ 0 x i32 ] }* %ar3078, i32 0, i32 1, i32 %_lhs3083
  %_lhs3087 = load i32* %index_ptr3084
  call void @print_int( i32 %_lhs3087 )
  %_lhs3088 = load i32* %i3080
  %bop3089 = add i32 %_lhs3088, 1
  store i32 %bop3089, i32* %i3080
  br label %__cond924

__fresh927:
  br label %__post922

__post922:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a3031, i32 %s3029){

__fresh919:
  %a_slot3032 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a3031, { i32, [ 0 x i32 ] }** %a_slot3032
  %s_slot3030 = alloca i32
  store i32 %s3029, i32* %s_slot3030
  %t3033 = alloca i32
  store i32 0, i32* %t3033
  %mi3034 = alloca i32
  store i32 0, i32* %mi3034
  %i3035 = alloca i32
  store i32 0, i32* %i3035
  br label %__cond918

__cond918:
  %_lhs3036 = load i32* %i3035
  %_lhs3037 = load i32* %s_slot3030
  %bop3038 = icmp slt i32 %_lhs3036, %_lhs3037
  br i1 %bop3038, label %__body917, label %__post916

__fresh920:
  br label %__body917

__body917:
  %_lhs3041 = load i32* %s_slot3030
  %_lhs3040 = load i32* %i3035
  %_lhs3039 = load { i32, [ 0 x i32 ] }** %a_slot3032
  %ret3042 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs3039, i32 %_lhs3040, i32 %_lhs3041 )
  store i32 %ret3042, i32* %mi3034
  %_lhs3043 = load i32* %i3035
  %size_entry_ptr3045 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 0
  %size3046 = load i32* %size_entry_ptr3045
  call void @oat_array_bounds_check( i32 %size3046, i32 %_lhs3043 )
  %index_ptr3044 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 1, i32 %_lhs3043
  %_lhs3047 = load i32* %index_ptr3044
  store i32 %_lhs3047, i32* %t3033
  %_lhs3048 = load i32* %i3035
  %size_entry_ptr3050 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 0
  %size3051 = load i32* %size_entry_ptr3050
  call void @oat_array_bounds_check( i32 %size3051, i32 %_lhs3048 )
  %index_ptr3049 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 1, i32 %_lhs3048
  %_lhs3052 = load i32* %mi3034
  %size_entry_ptr3054 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 0
  %size3055 = load i32* %size_entry_ptr3054
  call void @oat_array_bounds_check( i32 %size3055, i32 %_lhs3052 )
  %index_ptr3053 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 1, i32 %_lhs3052
  %_lhs3056 = load i32* %index_ptr3053
  store i32 %_lhs3056, i32* %index_ptr3049
  %_lhs3057 = load i32* %mi3034
  %size_entry_ptr3059 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 0
  %size3060 = load i32* %size_entry_ptr3059
  call void @oat_array_bounds_check( i32 %size3060, i32 %_lhs3057 )
  %index_ptr3058 = getelementptr { i32, [ 0 x i32 ] }* %a_slot3032, i32 0, i32 1, i32 %_lhs3057
  %_lhs3061 = load i32* %t3033
  store i32 %_lhs3061, i32* %index_ptr3058
  %_lhs3062 = load i32* %i3035
  %bop3063 = add i32 %_lhs3062, 1
  store i32 %bop3063, i32* %i3035
  br label %__cond918

__fresh921:
  br label %__post916

__post916:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2998, i32 %s2996, i32 %b2994){

__fresh911:
  %a_slot2999 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2998, { i32, [ 0 x i32 ] }** %a_slot2999
  %s_slot2997 = alloca i32
  store i32 %s2996, i32* %s_slot2997
  %b_slot2995 = alloca i32
  store i32 %b2994, i32* %b_slot2995
  %_lhs3000 = load i32* %s_slot2997
  %i3001 = alloca i32
  store i32 %_lhs3000, i32* %i3001
  %_lhs3002 = load i32* %s_slot2997
  %size_entry_ptr3004 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2999, i32 0, i32 0
  %size3005 = load i32* %size_entry_ptr3004
  call void @oat_array_bounds_check( i32 %size3005, i32 %_lhs3002 )
  %index_ptr3003 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2999, i32 0, i32 1, i32 %_lhs3002
  %_lhs3006 = load i32* %index_ptr3003
  %min3007 = alloca i32
  store i32 %_lhs3006, i32* %min3007
  %_lhs3008 = load i32* %s_slot2997
  %mi3009 = alloca i32
  store i32 %_lhs3008, i32* %mi3009
  br label %__cond907

__cond907:
  %_lhs3010 = load i32* %i3001
  %_lhs3011 = load i32* %b_slot2995
  %bop3012 = icmp slt i32 %_lhs3010, %_lhs3011
  br i1 %bop3012, label %__body906, label %__post905

__fresh912:
  br label %__body906

__body906:
  %_lhs3013 = load i32* %i3001
  %size_entry_ptr3015 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2999, i32 0, i32 0
  %size3016 = load i32* %size_entry_ptr3015
  call void @oat_array_bounds_check( i32 %size3016, i32 %_lhs3013 )
  %index_ptr3014 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2999, i32 0, i32 1, i32 %_lhs3013
  %_lhs3017 = load i32* %index_ptr3014
  %_lhs3018 = load i32* %min3007
  %bop3019 = icmp slt i32 %_lhs3017, %_lhs3018
  br i1 %bop3019, label %__then910, label %__else909

__fresh913:
  br label %__then910

__then910:
  %_lhs3020 = load i32* %i3001
  %size_entry_ptr3022 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2999, i32 0, i32 0
  %size3023 = load i32* %size_entry_ptr3022
  call void @oat_array_bounds_check( i32 %size3023, i32 %_lhs3020 )
  %index_ptr3021 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2999, i32 0, i32 1, i32 %_lhs3020
  %_lhs3024 = load i32* %index_ptr3021
  store i32 %_lhs3024, i32* %min3007
  %_lhs3025 = load i32* %i3001
  store i32 %_lhs3025, i32* %mi3009
  br label %__merge908

__fresh914:
  br label %__else909

__else909:
  br label %__merge908

__merge908:
  %_lhs3026 = load i32* %i3001
  %bop3027 = add i32 %_lhs3026, 1
  store i32 %bop3027, i32* %i3001
  br label %__cond907

__fresh915:
  br label %__post905

__post905:
  %_lhs3028 = load i32* %mi3009
  ret i32 %_lhs3028
}


