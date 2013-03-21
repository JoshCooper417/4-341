declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3036.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3036 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3036.str., i32 0, i32 0), align 4
@_oat_string3032.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3032 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3032.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh1318:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3016, i32 %n3014){

__fresh1313:
  %ar_slot3017 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3016, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3017
  %n_slot3015 = alloca i32
  store i32 %n3014, i32* %n_slot3015
  %i3018 = alloca i32
  store i32 0, i32* %i3018
  br label %__cond1309

__cond1309:
  %_lhs3019 = load i32* %i3018
  %_lhs3020 = load i32* %n_slot3015
  %bop3021 = icmp slt i32 %_lhs3019, %_lhs3020
  br i1 %bop3021, label %__body1308, label %__post1307

__fresh1314:
  br label %__body1308

__body1308:
  %j3022 = alloca i32
  store i32 0, i32* %j3022
  br label %__cond1312

__cond1312:
  %_lhs3023 = load i32* %j3022
  %bop3024 = icmp slt i32 %_lhs3023, 4
  br i1 %bop3024, label %__body1311, label %__post1310

__fresh1315:
  br label %__body1311

__body1311:
  %_lhs3025 = load i32* %j3022
  %_lhs3026 = load i32* %i3018
  %size_ptr3028 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3017, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3028, i32 %_lhs3026 )
  %index_ptr3027 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3017, i32 0, i32 1, i32 %_lhs3026
  %size_ptr3030 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3017, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3030, i32 %_lhs3025 )
  %index_ptr3029 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3017, i32 0, i32 1, i32 %_lhs3025
  %_lhs3031 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3017
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3031 )
  %strval3033 = load i8** @_oat_string3032
  call void @print_string( i8* %strval3033 )
  %_lhs3034 = load i32* %j3022
  %bop3035 = add i32 %_lhs3034, 1
  store i32 %bop3035, i32* %j3022
  br label %__cond1312

__fresh1316:
  br label %__post1310

__post1310:
  %strval3037 = load i8** @_oat_string3036
  call void @print_string( i8* %strval3037 )
  %_lhs3038 = load i32* %i3018
  %bop3039 = add i32 %_lhs3038, 1
  store i32 %bop3039, i32* %i3018
  br label %__cond1309

__fresh1317:
  br label %__post1307

__post1307:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12988, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22986, i32 %row2984, i32 %col2982){

__fresh1304:
  %a1_slot2989 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12988, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2989
  %a2_slot2987 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22986, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2987
  %row_slot2985 = alloca i32
  store i32 %row2984, i32* %row_slot2985
  %col_slot2983 = alloca i32
  store i32 %col2982, i32* %col_slot2983
  %sum2990 = alloca i32
  store i32 0, i32* %sum2990
  %k2991 = alloca i32
  store i32 0, i32* %k2991
  br label %__cond1303

__cond1303:
  %_lhs2992 = load i32* %k2991
  %bop2993 = icmp slt i32 %_lhs2992, 3
  br i1 %bop2993, label %__body1302, label %__post1301

__fresh1305:
  br label %__body1302

__body1302:
  %_lhs2994 = load i32* %sum2990
  %_lhs2995 = load i32* %k2991
  %_lhs2996 = load i32* %row_slot2985
  %size_ptr2998 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2989, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2998, i32 %_lhs2996 )
  %index_ptr2997 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2989, i32 0, i32 1, i32 %_lhs2996
  %size_ptr3000 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2989, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3000, i32 %_lhs2995 )
  %index_ptr2999 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2989, i32 0, i32 1, i32 %_lhs2995
  %_lhs3001 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2989
  %_lhs3002 = load i32* %col_slot2983
  %_lhs3003 = load i32* %k2991
  %size_ptr3005 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2987, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3005, i32 %_lhs3003 )
  %index_ptr3004 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2987, i32 0, i32 1, i32 %_lhs3003
  %size_ptr3007 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2987, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr3007, i32 %_lhs3002 )
  %index_ptr3006 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2987, i32 0, i32 1, i32 %_lhs3002
  %_lhs3008 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2987
  %bop3009 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3001, %_lhs3008
  %bop3010 = add i32 %_lhs2994, %bop3009
  store i32 %bop3010, i32* %sum2990
  %_lhs3011 = load i32* %k2991
  %bop3012 = add i32 %_lhs3011, 1
  store i32 %bop3012, i32* %k2991
  br label %__cond1303

__fresh1306:
  br label %__post1301

__post1301:
  %_lhs3013 = load i32* %sum2990
  ret i32 %_lhs3013
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12959, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22957, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32955){

__fresh1296:
  %a1_slot2960 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12959, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2960
  %a2_slot2958 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22957, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2958
  %a3_slot2956 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32955, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2956
  %i2961 = alloca i32
  store i32 0, i32* %i2961
  br label %__cond1292

__cond1292:
  %_lhs2962 = load i32* %i2961
  %bop2963 = icmp slt i32 %_lhs2962, 2
  br i1 %bop2963, label %__body1291, label %__post1290

__fresh1297:
  br label %__body1291

__body1291:
  %j2964 = alloca i32
  store i32 0, i32* %j2964
  br label %__cond1295

__cond1295:
  %_lhs2965 = load i32* %j2964
  %bop2966 = icmp slt i32 %_lhs2965, 4
  br i1 %bop2966, label %__body1294, label %__post1293

__fresh1298:
  br label %__body1294

__body1294:
  %_lhs2967 = load i32* %j2964
  %_lhs2968 = load i32* %i2961
  %size_ptr2970 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2956, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2970, i32 %_lhs2968 )
  %index_ptr2969 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2956, i32 0, i32 1, i32 %_lhs2968
  %size_ptr2972 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2956, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2972, i32 %_lhs2967 )
  %index_ptr2971 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2956, i32 0, i32 1, i32 %_lhs2967
  %_lhs2976 = load i32* %j2964
  %_lhs2975 = load i32* %i2961
  %_lhs2974 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2958
  %_lhs2973 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2960
  %ret2977 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2973, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2974, i32 %_lhs2975, i32 %_lhs2976 )
  store i32 %ret2977, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2956
  %_lhs2978 = load i32* %j2964
  %bop2979 = add i32 %_lhs2978, 1
  store i32 %bop2979, i32* %j2964
  br label %__cond1295

__fresh1299:
  br label %__post1293

__post1293:
  %_lhs2980 = load i32* %i2961
  %bop2981 = add i32 %_lhs2980, 1
  store i32 %bop2981, i32* %i2961
  br label %__cond1292

__fresh1300:
  br label %__post1290

__post1290:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12909, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22907, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32905){

__fresh1283:
  %a1_slot2910 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12909, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2910
  %a2_slot2908 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22907, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2908
  %a3_slot2906 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32905, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2906
  %i2911 = alloca i32
  store i32 0, i32* %i2911
  br label %__cond1276

__cond1276:
  %_lhs2912 = load i32* %i2911
  %bop2913 = icmp slt i32 %_lhs2912, 2
  br i1 %bop2913, label %__body1275, label %__post1274

__fresh1284:
  br label %__body1275

__body1275:
  %j2914 = alloca i32
  store i32 0, i32* %j2914
  br label %__cond1279

__cond1279:
  %_lhs2915 = load i32* %j2914
  %bop2916 = icmp slt i32 %_lhs2915, 4
  br i1 %bop2916, label %__body1278, label %__post1277

__fresh1285:
  br label %__body1278

__body1278:
  %k2917 = alloca i32
  store i32 0, i32* %k2917
  br label %__cond1282

__cond1282:
  %_lhs2918 = load i32* %k2917
  %bop2919 = icmp slt i32 %_lhs2918, 3
  br i1 %bop2919, label %__body1281, label %__post1280

__fresh1286:
  br label %__body1281

__body1281:
  %_lhs2920 = load i32* %j2914
  %_lhs2921 = load i32* %i2911
  %size_ptr2923 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2923, i32 %_lhs2921 )
  %index_ptr2922 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 1, i32 %_lhs2921
  %size_ptr2925 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2925, i32 %_lhs2920 )
  %index_ptr2924 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 1, i32 %_lhs2920
  %_lhs2926 = load i32* %j2914
  %_lhs2927 = load i32* %i2911
  %size_ptr2929 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2929, i32 %_lhs2927 )
  %index_ptr2928 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 1, i32 %_lhs2927
  %size_ptr2931 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2931, i32 %_lhs2926 )
  %index_ptr2930 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot2906, i32 0, i32 1, i32 %_lhs2926
  %_lhs2932 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2906
  %_lhs2933 = load i32* %k2917
  %_lhs2934 = load i32* %i2911
  %size_ptr2936 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2910, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2936, i32 %_lhs2934 )
  %index_ptr2935 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2910, i32 0, i32 1, i32 %_lhs2934
  %size_ptr2938 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2910, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2938, i32 %_lhs2933 )
  %index_ptr2937 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot2910, i32 0, i32 1, i32 %_lhs2933
  %_lhs2939 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2910
  %_lhs2940 = load i32* %j2914
  %_lhs2941 = load i32* %k2917
  %size_ptr2943 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2908, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2943, i32 %_lhs2941 )
  %index_ptr2942 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2908, i32 0, i32 1, i32 %_lhs2941
  %size_ptr2945 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2908, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2945, i32 %_lhs2940 )
  %index_ptr2944 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot2908, i32 0, i32 1, i32 %_lhs2940
  %_lhs2946 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2908
  %bop2947 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2939, %_lhs2946
  %bop2948 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2932, %bop2947
  store i32 %bop2948, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2906
  %_lhs2949 = load i32* %k2917
  %bop2950 = add i32 %_lhs2949, 1
  store i32 %bop2950, i32* %k2917
  br label %__cond1282

__fresh1287:
  br label %__post1280

__post1280:
  %_lhs2951 = load i32* %j2914
  %bop2952 = add i32 %_lhs2951, 1
  store i32 %bop2952, i32* %j2914
  br label %__cond1279

__fresh1288:
  br label %__post1277

__post1277:
  %_lhs2953 = load i32* %i2911
  %bop2954 = add i32 %_lhs2953, 1
  store i32 %bop2954, i32* %i2911
  br label %__cond1276

__fresh1289:
  br label %__post1274

__post1274:
  ret void
}


define i32 @program (i32 %argc2839, { i32, [ 0 x i8* ] }* %argv2837){

__fresh1273:
  %argc_slot2840 = alloca i32
  store i32 %argc2839, i32* %argc_slot2840
  %argv_slot2838 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2837, { i32, [ 0 x i8* ] }** %argv_slot2838
  %array_ptr2841 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2842 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2841 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2843 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2844 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2843 to { i32, [ 0 x i32 ] }* 
  %index_ptr2845 = getelementptr { i32, [ 0 x i32 ] }* %array2844, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2845
  %index_ptr2846 = getelementptr { i32, [ 0 x i32 ] }* %array2844, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2846
  %index_ptr2847 = getelementptr { i32, [ 0 x i32 ] }* %array2844, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2847
  %index_ptr2848 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2842, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2844, { i32, [ 0 x i32 ] }** %index_ptr2848
  %array_ptr2849 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2850 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2849 to { i32, [ 0 x i32 ] }* 
  %index_ptr2851 = getelementptr { i32, [ 0 x i32 ] }* %array2850, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2851
  %index_ptr2852 = getelementptr { i32, [ 0 x i32 ] }* %array2850, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2852
  %index_ptr2853 = getelementptr { i32, [ 0 x i32 ] }* %array2850, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2853
  %index_ptr2854 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2842, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2850, { i32, [ 0 x i32 ] }** %index_ptr2854
  %a2855 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2842, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2855
  %array_ptr2856 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2857 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2856 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2858 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2859 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2858 to { i32, [ 0 x i32 ] }* 
  %index_ptr2860 = getelementptr { i32, [ 0 x i32 ] }* %array2859, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2860
  %index_ptr2861 = getelementptr { i32, [ 0 x i32 ] }* %array2859, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2861
  %index_ptr2862 = getelementptr { i32, [ 0 x i32 ] }* %array2859, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2862
  %index_ptr2863 = getelementptr { i32, [ 0 x i32 ] }* %array2859, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2863
  %index_ptr2864 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2859, { i32, [ 0 x i32 ] }** %index_ptr2864
  %array_ptr2865 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2866 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2865 to { i32, [ 0 x i32 ] }* 
  %index_ptr2867 = getelementptr { i32, [ 0 x i32 ] }* %array2866, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2867
  %index_ptr2868 = getelementptr { i32, [ 0 x i32 ] }* %array2866, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2868
  %index_ptr2869 = getelementptr { i32, [ 0 x i32 ] }* %array2866, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2869
  %index_ptr2870 = getelementptr { i32, [ 0 x i32 ] }* %array2866, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2870
  %index_ptr2871 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2866, { i32, [ 0 x i32 ] }** %index_ptr2871
  %array_ptr2872 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2873 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2872 to { i32, [ 0 x i32 ] }* 
  %index_ptr2874 = getelementptr { i32, [ 0 x i32 ] }* %array2873, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2874
  %index_ptr2875 = getelementptr { i32, [ 0 x i32 ] }* %array2873, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2875
  %index_ptr2876 = getelementptr { i32, [ 0 x i32 ] }* %array2873, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2876
  %index_ptr2877 = getelementptr { i32, [ 0 x i32 ] }* %array2873, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2877
  %index_ptr2878 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2873, { i32, [ 0 x i32 ] }** %index_ptr2878
  %b2879 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2857, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2879
  %array_ptr2880 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2881 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2880 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2882 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2883 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2882 to { i32, [ 0 x i32 ] }* 
  %index_ptr2884 = getelementptr { i32, [ 0 x i32 ] }* %array2883, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2884
  %index_ptr2885 = getelementptr { i32, [ 0 x i32 ] }* %array2883, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2885
  %index_ptr2886 = getelementptr { i32, [ 0 x i32 ] }* %array2883, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2886
  %index_ptr2887 = getelementptr { i32, [ 0 x i32 ] }* %array2883, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2887
  %index_ptr2888 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2881, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2883, { i32, [ 0 x i32 ] }** %index_ptr2888
  %array_ptr2889 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2890 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2889 to { i32, [ 0 x i32 ] }* 
  %index_ptr2891 = getelementptr { i32, [ 0 x i32 ] }* %array2890, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2891
  %index_ptr2892 = getelementptr { i32, [ 0 x i32 ] }* %array2890, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2892
  %index_ptr2893 = getelementptr { i32, [ 0 x i32 ] }* %array2890, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2893
  %index_ptr2894 = getelementptr { i32, [ 0 x i32 ] }* %array2890, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2894
  %index_ptr2895 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2881, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2890, { i32, [ 0 x i32 ] }** %index_ptr2895
  %c2896 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2881, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2896
  %_lhs2899 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2896
  %_lhs2898 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2879
  %_lhs2897 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2855
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2897, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2898, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2899 )
  %_lhs2900 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2896
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2900, i32 2 )
  %_lhs2903 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2896
  %_lhs2902 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2879
  %_lhs2901 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2855
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2901, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2902, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2903 )
  %_lhs2904 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2896
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2904, i32 2 )
  ret i32 0
}


