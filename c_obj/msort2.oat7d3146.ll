declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2321.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2321 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2321.str., i32 0, i32 0), align 4
@_oat_string2317.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2317 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2317.str., i32 0, i32 0), align 4
@a2308 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2308.init
define void @oat_init (){

__fresh1095:
  call void @a2308.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2357, i32 %low2355, i32 %high2353, i32 %mid2351){

__fresh1081:
  %a_slot2358 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2357, { i32, [ 0 x i32 ] }** %a_slot2358
  %low_slot2356 = alloca i32
  store i32 %low2355, i32* %low_slot2356
  %high_slot2354 = alloca i32
  store i32 %high2353, i32* %high_slot2354
  %mid_slot2352 = alloca i32
  store i32 %mid2351, i32* %mid_slot2352
  %i2359 = alloca i32
  store i32 0, i32* %i2359
  %j2360 = alloca i32
  store i32 0, i32* %j2360
  %k2361 = alloca i32
  store i32 0, i32* %k2361
  %array_ptr2362 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2363 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2362 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2365
  br label %__compare1063

__fresh1082:
  br label %__compare1063

__compare1063:
  %comparison_result2366 = icmp slt i32* %index_ptr2365, 50
  br i1 %comparison_result2366, label %__body1064, label %__end1065

__fresh1083:
  br label %__body1064

__body1064:
  %i2367 = load i32* %index_ptr2365
  %index_ptr2365 = add i32* %index_ptr2365, 1
  br label %__compare1063

__fresh1084:
  br label %__end1065

__end1065:
  %c2368 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2363, { i32, [ 0 x i32 ] }** %c2368
  %_lhs2369 = load i32* %low_slot2356
  store i32 %_lhs2369, i32* %i2359
  %_lhs2370 = load i32* %mid_slot2352
  %bop2371 = add i32 %_lhs2370, 1
  store i32 %bop2371, i32* %j2360
  %_lhs2372 = load i32* %low_slot2356
  store i32 %_lhs2372, i32* %k2361
  br label %__cond1068

__cond1068:
  %_lhs2373 = load i32* %i2359
  %_lhs2374 = load i32* %mid_slot2352
  %bop2375 = icmp sle i32 %_lhs2373, %_lhs2374
  %_lhs2376 = load i32* %j2360
  %_lhs2377 = load i32* %high_slot2354
  %bop2378 = icmp sle i32 %_lhs2376, %_lhs2377
  %bop2379 = and i1 %bop2375, %bop2378
  br i1 %bop2379, label %__body1067, label %__post1066

__fresh1085:
  br label %__body1067

__body1067:
  %_lhs2380 = load i32* %i2359
  %size_ptr2382 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2382, i32 %_lhs2380 )
  %index_ptr2381 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2380
  %_lhs2383 = load { i32, [ 0 x i32 ] }** %a_slot2358
  %_lhs2384 = load i32* %j2360
  %size_ptr2386 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2386, i32 %_lhs2384 )
  %index_ptr2385 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2384
  %_lhs2387 = load { i32, [ 0 x i32 ] }** %a_slot2358
  %bop2388 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2383, %_lhs2387
  br i1 %bop2388, label %__then1071, label %__else1070

__fresh1086:
  br label %__then1071

__then1071:
  %_lhs2389 = load i32* %k2361
  %size_ptr2391 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2391, i32 %_lhs2389 )
  %index_ptr2390 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 1, i32 %_lhs2389
  %_lhs2392 = load i32* %i2359
  %size_ptr2394 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2394, i32 %_lhs2392 )
  %index_ptr2393 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2392
  %_lhs2395 = load { i32, [ 0 x i32 ] }** %a_slot2358
  store { i32, [ 0 x i32 ] }* %_lhs2395, { i32, [ 0 x i32 ] }** %c2368
  %_lhs2396 = load i32* %k2361
  %bop2397 = add i32 %_lhs2396, 1
  store i32 %bop2397, i32* %k2361
  %_lhs2398 = load i32* %i2359
  %bop2399 = add i32 %_lhs2398, 1
  store i32 %bop2399, i32* %i2359
  br label %__merge1069

__fresh1087:
  br label %__else1070

__else1070:
  %_lhs2400 = load i32* %k2361
  %size_ptr2402 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2402, i32 %_lhs2400 )
  %index_ptr2401 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 1, i32 %_lhs2400
  %_lhs2403 = load i32* %j2360
  %size_ptr2405 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2405, i32 %_lhs2403 )
  %index_ptr2404 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2403
  %_lhs2406 = load { i32, [ 0 x i32 ] }** %a_slot2358
  store { i32, [ 0 x i32 ] }* %_lhs2406, { i32, [ 0 x i32 ] }** %c2368
  %_lhs2407 = load i32* %k2361
  %bop2408 = add i32 %_lhs2407, 1
  store i32 %bop2408, i32* %k2361
  %_lhs2409 = load i32* %j2360
  %bop2410 = add i32 %_lhs2409, 1
  store i32 %bop2410, i32* %j2360
  br label %__merge1069

__merge1069:
  br label %__cond1068

__fresh1088:
  br label %__post1066

__post1066:
  br label %__cond1074

__cond1074:
  %_lhs2411 = load i32* %i2359
  %_lhs2412 = load i32* %mid_slot2352
  %bop2413 = icmp sle i32 %_lhs2411, %_lhs2412
  br i1 %bop2413, label %__body1073, label %__post1072

__fresh1089:
  br label %__body1073

__body1073:
  %_lhs2414 = load i32* %k2361
  %size_ptr2416 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2416, i32 %_lhs2414 )
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 1, i32 %_lhs2414
  %_lhs2417 = load i32* %i2359
  %size_ptr2419 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2419, i32 %_lhs2417 )
  %index_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2417
  %_lhs2420 = load { i32, [ 0 x i32 ] }** %a_slot2358
  store { i32, [ 0 x i32 ] }* %_lhs2420, { i32, [ 0 x i32 ] }** %c2368
  %_lhs2421 = load i32* %k2361
  %bop2422 = add i32 %_lhs2421, 1
  store i32 %bop2422, i32* %k2361
  %_lhs2423 = load i32* %i2359
  %bop2424 = add i32 %_lhs2423, 1
  store i32 %bop2424, i32* %i2359
  br label %__cond1074

__fresh1090:
  br label %__post1072

__post1072:
  br label %__cond1077

__cond1077:
  %_lhs2425 = load i32* %j2360
  %_lhs2426 = load i32* %high_slot2354
  %bop2427 = icmp sle i32 %_lhs2425, %_lhs2426
  br i1 %bop2427, label %__body1076, label %__post1075

__fresh1091:
  br label %__body1076

__body1076:
  %_lhs2428 = load i32* %k2361
  %size_ptr2430 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2430, i32 %_lhs2428 )
  %index_ptr2429 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 1, i32 %_lhs2428
  %_lhs2431 = load i32* %j2360
  %size_ptr2433 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2433, i32 %_lhs2431 )
  %index_ptr2432 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2431
  %_lhs2434 = load { i32, [ 0 x i32 ] }** %a_slot2358
  store { i32, [ 0 x i32 ] }* %_lhs2434, { i32, [ 0 x i32 ] }** %c2368
  %_lhs2435 = load i32* %k2361
  %bop2436 = add i32 %_lhs2435, 1
  store i32 %bop2436, i32* %k2361
  %_lhs2437 = load i32* %j2360
  %bop2438 = add i32 %_lhs2437, 1
  store i32 %bop2438, i32* %j2360
  br label %__cond1077

__fresh1092:
  br label %__post1075

__post1075:
  %_lhs2439 = load i32* %low_slot2356
  store i32 %_lhs2439, i32* %i2359
  br label %__cond1080

__cond1080:
  %_lhs2440 = load i32* %i2359
  %_lhs2441 = load i32* %k2361
  %bop2442 = icmp slt i32 %_lhs2440, %_lhs2441
  br i1 %bop2442, label %__body1079, label %__post1078

__fresh1093:
  br label %__body1079

__body1079:
  %_lhs2443 = load i32* %i2359
  %size_ptr2445 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2445, i32 %_lhs2443 )
  %index_ptr2444 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2358, i32 0, i32 1, i32 %_lhs2443
  %_lhs2446 = load i32* %i2359
  %size_ptr2448 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2448, i32 %_lhs2446 )
  %index_ptr2447 = getelementptr { i32, [ 0 x i32 ] }* %c2368, i32 0, i32 1, i32 %_lhs2446
  %_lhs2449 = load { i32, [ 0 x i32 ] }** %c2368
  store { i32, [ 0 x i32 ] }* %_lhs2449, { i32, [ 0 x i32 ] }** %a_slot2358
  %_lhs2450 = load i32* %i2359
  %bop2451 = add i32 %_lhs2450, 1
  store i32 %bop2451, i32* %i2359
  br label %__cond1080

__fresh1094:
  br label %__post1078

__post1078:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2330, i32 %low2328, i32 %high2326){

__fresh1060:
  %a_slot2331 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2330, { i32, [ 0 x i32 ] }** %a_slot2331
  %low_slot2329 = alloca i32
  store i32 %low2328, i32* %low_slot2329
  %high_slot2327 = alloca i32
  store i32 %high2326, i32* %high_slot2327
  %mid2332 = alloca i32
  store i32 0, i32* %mid2332
  %_lhs2333 = load i32* %low_slot2329
  %_lhs2334 = load i32* %high_slot2327
  %bop2335 = icmp slt i32 %_lhs2333, %_lhs2334
  br i1 %bop2335, label %__then1059, label %__else1058

__fresh1061:
  br label %__then1059

__then1059:
  %_lhs2336 = load i32* %low_slot2329
  %_lhs2337 = load i32* %high_slot2327
  %bop2338 = add i32 %_lhs2336, %_lhs2337
  %bop2339 = ashr i32 %bop2338, 1
  store i32 %bop2339, i32* %mid2332
  %_lhs2342 = load i32* %mid2332
  %_lhs2341 = load i32* %low_slot2329
  %_lhs2340 = load { i32, [ 0 x i32 ] }** %a_slot2331
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2340, i32 %_lhs2341, i32 %_lhs2342 )
  %_lhs2346 = load i32* %high_slot2327
  %_lhs2344 = load i32* %mid2332
  %bop2345 = add i32 %_lhs2344, 1
  %_lhs2343 = load { i32, [ 0 x i32 ] }** %a_slot2331
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2343, i32 %bop2345, i32 %_lhs2346 )
  %_lhs2350 = load i32* %mid2332
  %_lhs2349 = load i32* %high_slot2327
  %_lhs2348 = load i32* %low_slot2329
  %_lhs2347 = load { i32, [ 0 x i32 ] }** %a_slot2331
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2347, i32 %_lhs2348, i32 %_lhs2349, i32 %_lhs2350 )
  br label %__merge1057

__fresh1062:
  br label %__else1058

__else1058:
  br label %__merge1057

__merge1057:
  ret void
}


define i32 @program (i32 %argc2311, { i32, [ 0 x i8* ] }* %argv2309){

__fresh1056:
  %argc_slot2312 = alloca i32
  store i32 %argc2311, i32* %argc_slot2312
  %argv_slot2310 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2309, { i32, [ 0 x i8* ] }** %argv_slot2310
  %i2313 = alloca i32
  store i32 0, i32* %i2313
  %_lhs2314 = load { i32, [ 0 x i32 ] }** @a2308
  %ret2315 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2314 )
  call void @print_string( i8* %ret2315 )
  %_lhs2316 = load { i32, [ 0 x i32 ] }** @a2308
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2316, i32 0, i32 9 )
  %strval2318 = load i8** @_oat_string2317
  call void @print_string( i8* %strval2318 )
  %_lhs2319 = load { i32, [ 0 x i32 ] }** @a2308
  %ret2320 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2319 )
  call void @print_string( i8* %ret2320 )
  %strval2322 = load i8** @_oat_string2321
  call void @print_string( i8* %strval2322 )
  %_lhs2323 = load i32* %i2313
  ret i32 %_lhs2323
}


define void @a2308.init (){

__fresh1055:
  %array_ptr2296 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2297 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2296 to { i32, [ 0 x i32 ] }* 
  %index_ptr2298 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2298
  %index_ptr2299 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2299
  %index_ptr2300 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2300
  %index_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2301
  %index_ptr2302 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2302
  %index_ptr2303 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2303
  %index_ptr2304 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2304
  %index_ptr2305 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2305
  %index_ptr2306 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2306
  %index_ptr2307 = getelementptr { i32, [ 0 x i32 ] }* %array2297, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2307
  store { i32, [ 0 x i32 ] }* %array2297, { i32, [ 0 x i32 ] }** @a2308
  ret void
}


