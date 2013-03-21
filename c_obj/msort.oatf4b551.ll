declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2355.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2355 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2355.str., i32 0, i32 0), align 4
@_oat_string2351.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2351 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2351.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh773:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2391, i32 %low2389, i32 %high2387, i32 %mid2385){

__fresh759:
  %a_slot2392 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2391, { i32, [ 0 x i32 ] }** %a_slot2392
  %low_slot2390 = alloca i32
  store i32 %low2389, i32* %low_slot2390
  %high_slot2388 = alloca i32
  store i32 %high2387, i32* %high_slot2388
  %mid_slot2386 = alloca i32
  store i32 %mid2385, i32* %mid_slot2386
  %i2393 = alloca i32
  store i32 0, i32* %i2393
  %j2394 = alloca i32
  store i32 0, i32* %j2394
  %k2395 = alloca i32
  store i32 0, i32* %k2395
  %array_ptr2396 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2397 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2396 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2399
  br label %__compare741

__fresh760:
  br label %__compare741

__compare741:
  %comparison_result2400 = icmp slt i32* %index_ptr2399, 50
  br i1 %comparison_result2400, label %__body742, label %__end743

__fresh761:
  br label %__body742

__body742:
  %i2401 = load i32* %index_ptr2399
  %index_ptr2399 = add i32* %index_ptr2399, 1
  br label %__compare741

__fresh762:
  br label %__end743

__end743:
  %c2402 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2397, { i32, [ 0 x i32 ] }** %c2402
  %_lhs2403 = load i32* %low_slot2390
  store i32 %_lhs2403, i32* %i2393
  %_lhs2404 = load i32* %mid_slot2386
  %bop2405 = add i32 %_lhs2404, 1
  store i32 %bop2405, i32* %j2394
  %_lhs2406 = load i32* %low_slot2390
  store i32 %_lhs2406, i32* %k2395
  br label %__cond746

__cond746:
  %_lhs2407 = load i32* %i2393
  %_lhs2408 = load i32* %mid_slot2386
  %bop2409 = icmp sle i32 %_lhs2407, %_lhs2408
  %_lhs2410 = load i32* %j2394
  %_lhs2411 = load i32* %high_slot2388
  %bop2412 = icmp sle i32 %_lhs2410, %_lhs2411
  %bop2413 = and i1 %bop2409, %bop2412
  br i1 %bop2413, label %__body745, label %__post744

__fresh763:
  br label %__body745

__body745:
  %_lhs2414 = load i32* %i2393
  %size_entry_ptr2416 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2417 = load i32* %size_entry_ptr2416
  call void @oat_array_bounds_check( i32 %size2417, i32 %_lhs2414 )
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2414
  %_lhs2418 = load i32* %index_ptr2415
  %_lhs2419 = load i32* %j2394
  %size_entry_ptr2421 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2422 = load i32* %size_entry_ptr2421
  call void @oat_array_bounds_check( i32 %size2422, i32 %_lhs2419 )
  %index_ptr2420 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2419
  %_lhs2423 = load i32* %index_ptr2420
  %bop2424 = icmp slt i32 %_lhs2418, %_lhs2423
  br i1 %bop2424, label %__then749, label %__else748

__fresh764:
  br label %__then749

__then749:
  %_lhs2425 = load i32* %k2395
  %size_entry_ptr2427 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 0
  %size2428 = load i32* %size_entry_ptr2427
  call void @oat_array_bounds_check( i32 %size2428, i32 %_lhs2425 )
  %index_ptr2426 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 1, i32 %_lhs2425
  %_lhs2429 = load i32* %i2393
  %size_entry_ptr2431 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2432 = load i32* %size_entry_ptr2431
  call void @oat_array_bounds_check( i32 %size2432, i32 %_lhs2429 )
  %index_ptr2430 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2429
  %_lhs2433 = load i32* %index_ptr2430
  store i32 %_lhs2433, i32* %index_ptr2426
  %_lhs2434 = load i32* %k2395
  %bop2435 = add i32 %_lhs2434, 1
  store i32 %bop2435, i32* %k2395
  %_lhs2436 = load i32* %i2393
  %bop2437 = add i32 %_lhs2436, 1
  store i32 %bop2437, i32* %i2393
  br label %__merge747

__fresh765:
  br label %__else748

__else748:
  %_lhs2438 = load i32* %k2395
  %size_entry_ptr2440 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 0
  %size2441 = load i32* %size_entry_ptr2440
  call void @oat_array_bounds_check( i32 %size2441, i32 %_lhs2438 )
  %index_ptr2439 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 1, i32 %_lhs2438
  %_lhs2442 = load i32* %j2394
  %size_entry_ptr2444 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2445 = load i32* %size_entry_ptr2444
  call void @oat_array_bounds_check( i32 %size2445, i32 %_lhs2442 )
  %index_ptr2443 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2442
  %_lhs2446 = load i32* %index_ptr2443
  store i32 %_lhs2446, i32* %index_ptr2439
  %_lhs2447 = load i32* %k2395
  %bop2448 = add i32 %_lhs2447, 1
  store i32 %bop2448, i32* %k2395
  %_lhs2449 = load i32* %j2394
  %bop2450 = add i32 %_lhs2449, 1
  store i32 %bop2450, i32* %j2394
  br label %__merge747

__merge747:
  br label %__cond746

__fresh766:
  br label %__post744

__post744:
  br label %__cond752

__cond752:
  %_lhs2451 = load i32* %i2393
  %_lhs2452 = load i32* %mid_slot2386
  %bop2453 = icmp sle i32 %_lhs2451, %_lhs2452
  br i1 %bop2453, label %__body751, label %__post750

__fresh767:
  br label %__body751

__body751:
  %_lhs2454 = load i32* %k2395
  %size_entry_ptr2456 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 0
  %size2457 = load i32* %size_entry_ptr2456
  call void @oat_array_bounds_check( i32 %size2457, i32 %_lhs2454 )
  %index_ptr2455 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 1, i32 %_lhs2454
  %_lhs2458 = load i32* %i2393
  %size_entry_ptr2460 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2461 = load i32* %size_entry_ptr2460
  call void @oat_array_bounds_check( i32 %size2461, i32 %_lhs2458 )
  %index_ptr2459 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2458
  %_lhs2462 = load i32* %index_ptr2459
  store i32 %_lhs2462, i32* %index_ptr2455
  %_lhs2463 = load i32* %k2395
  %bop2464 = add i32 %_lhs2463, 1
  store i32 %bop2464, i32* %k2395
  %_lhs2465 = load i32* %i2393
  %bop2466 = add i32 %_lhs2465, 1
  store i32 %bop2466, i32* %i2393
  br label %__cond752

__fresh768:
  br label %__post750

__post750:
  br label %__cond755

__cond755:
  %_lhs2467 = load i32* %j2394
  %_lhs2468 = load i32* %high_slot2388
  %bop2469 = icmp sle i32 %_lhs2467, %_lhs2468
  br i1 %bop2469, label %__body754, label %__post753

__fresh769:
  br label %__body754

__body754:
  %_lhs2470 = load i32* %k2395
  %size_entry_ptr2472 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 0
  %size2473 = load i32* %size_entry_ptr2472
  call void @oat_array_bounds_check( i32 %size2473, i32 %_lhs2470 )
  %index_ptr2471 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 1, i32 %_lhs2470
  %_lhs2474 = load i32* %j2394
  %size_entry_ptr2476 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2477 = load i32* %size_entry_ptr2476
  call void @oat_array_bounds_check( i32 %size2477, i32 %_lhs2474 )
  %index_ptr2475 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2474
  %_lhs2478 = load i32* %index_ptr2475
  store i32 %_lhs2478, i32* %index_ptr2471
  %_lhs2479 = load i32* %k2395
  %bop2480 = add i32 %_lhs2479, 1
  store i32 %bop2480, i32* %k2395
  %_lhs2481 = load i32* %j2394
  %bop2482 = add i32 %_lhs2481, 1
  store i32 %bop2482, i32* %j2394
  br label %__cond755

__fresh770:
  br label %__post753

__post753:
  %_lhs2483 = load i32* %low_slot2390
  store i32 %_lhs2483, i32* %i2393
  br label %__cond758

__cond758:
  %_lhs2484 = load i32* %i2393
  %_lhs2485 = load i32* %k2395
  %bop2486 = icmp slt i32 %_lhs2484, %_lhs2485
  br i1 %bop2486, label %__body757, label %__post756

__fresh771:
  br label %__body757

__body757:
  %_lhs2487 = load i32* %i2393
  %size_entry_ptr2489 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 0
  %size2490 = load i32* %size_entry_ptr2489
  call void @oat_array_bounds_check( i32 %size2490, i32 %_lhs2487 )
  %index_ptr2488 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2392, i32 0, i32 1, i32 %_lhs2487
  %_lhs2491 = load i32* %i2393
  %size_entry_ptr2493 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 0
  %size2494 = load i32* %size_entry_ptr2493
  call void @oat_array_bounds_check( i32 %size2494, i32 %_lhs2491 )
  %index_ptr2492 = getelementptr { i32, [ 0 x i32 ] }* %c2402, i32 0, i32 1, i32 %_lhs2491
  %_lhs2495 = load i32* %index_ptr2492
  store i32 %_lhs2495, i32* %index_ptr2488
  %_lhs2496 = load i32* %i2393
  %bop2497 = add i32 %_lhs2496, 1
  store i32 %bop2497, i32* %i2393
  br label %__cond758

__fresh772:
  br label %__post756

__post756:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2364, i32 %low2362, i32 %high2360){

__fresh738:
  %a_slot2365 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2364, { i32, [ 0 x i32 ] }** %a_slot2365
  %low_slot2363 = alloca i32
  store i32 %low2362, i32* %low_slot2363
  %high_slot2361 = alloca i32
  store i32 %high2360, i32* %high_slot2361
  %mid2366 = alloca i32
  store i32 0, i32* %mid2366
  %_lhs2367 = load i32* %low_slot2363
  %_lhs2368 = load i32* %high_slot2361
  %bop2369 = icmp slt i32 %_lhs2367, %_lhs2368
  br i1 %bop2369, label %__then737, label %__else736

__fresh739:
  br label %__then737

__then737:
  %_lhs2370 = load i32* %low_slot2363
  %_lhs2371 = load i32* %high_slot2361
  %bop2372 = add i32 %_lhs2370, %_lhs2371
  %bop2373 = ashr i32 %bop2372, 1
  store i32 %bop2373, i32* %mid2366
  %_lhs2376 = load i32* %mid2366
  %_lhs2375 = load i32* %low_slot2363
  %_lhs2374 = load { i32, [ 0 x i32 ] }** %a_slot2365
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2374, i32 %_lhs2375, i32 %_lhs2376 )
  %_lhs2380 = load i32* %high_slot2361
  %_lhs2378 = load i32* %mid2366
  %bop2379 = add i32 %_lhs2378, 1
  %_lhs2377 = load { i32, [ 0 x i32 ] }** %a_slot2365
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2377, i32 %bop2379, i32 %_lhs2380 )
  %_lhs2384 = load i32* %mid2366
  %_lhs2383 = load i32* %high_slot2361
  %_lhs2382 = load i32* %low_slot2363
  %_lhs2381 = load { i32, [ 0 x i32 ] }** %a_slot2365
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2381, i32 %_lhs2382, i32 %_lhs2383, i32 %_lhs2384 )
  br label %__merge735

__fresh740:
  br label %__else736

__else736:
  br label %__merge735

__merge735:
  ret void
}


define i32 @program (i32 %argc2332, { i32, [ 0 x i8* ] }* %argv2330){

__fresh734:
  %argc_slot2333 = alloca i32
  store i32 %argc2332, i32* %argc_slot2333
  %argv_slot2331 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2330, { i32, [ 0 x i8* ] }** %argv_slot2331
  %i2334 = alloca i32
  store i32 0, i32* %i2334
  %array_ptr2335 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2336 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2335 to { i32, [ 0 x i32 ] }* 
  %index_ptr2337 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2337
  %index_ptr2338 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2338
  %index_ptr2339 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2339
  %index_ptr2340 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2340
  %index_ptr2341 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2341
  %index_ptr2342 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2342
  %index_ptr2343 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2343
  %index_ptr2344 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2344
  %index_ptr2345 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2345
  %index_ptr2346 = getelementptr { i32, [ 0 x i32 ] }* %array2336, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2346
  %a2347 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2336, { i32, [ 0 x i32 ] }** %a2347
  %_lhs2348 = load { i32, [ 0 x i32 ] }** %a2347
  %ret2349 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2348 )
  call void @print_string( i8* %ret2349 )
  %_lhs2350 = load { i32, [ 0 x i32 ] }** %a2347
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2350, i32 0, i32 9 )
  %strval2352 = load i8** @_oat_string2351
  call void @print_string( i8* %strval2352 )
  %_lhs2353 = load { i32, [ 0 x i32 ] }** %a2347
  %ret2354 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2353 )
  call void @print_string( i8* %ret2354 )
  %strval2356 = load i8** @_oat_string2355
  call void @print_string( i8* %strval2356 )
  %_lhs2357 = load i32* %i2334
  ret i32 %_lhs2357
}


