declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2523.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2523 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2523.str., i32 0, i32 0), align 4
@_oat_string2519.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2519 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2519.str., i32 0, i32 0), align 4
@a2510 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2510.init
define void @oat_init (){

__fresh814:
  call void @a2510.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2559, i32 %low2557, i32 %high2555, i32 %mid2553){

__fresh800:
  %a_slot2560 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2559, { i32, [ 0 x i32 ] }** %a_slot2560
  %low_slot2558 = alloca i32
  store i32 %low2557, i32* %low_slot2558
  %high_slot2556 = alloca i32
  store i32 %high2555, i32* %high_slot2556
  %mid_slot2554 = alloca i32
  store i32 %mid2553, i32* %mid_slot2554
  %i2561 = alloca i32
  store i32 0, i32* %i2561
  %j2562 = alloca i32
  store i32 0, i32* %j2562
  %k2563 = alloca i32
  store i32 0, i32* %k2563
  %array_ptr2564 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2565 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2564 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2567
  br label %__compare782

__fresh801:
  br label %__compare782

__compare782:
  %comparison_result2568 = icmp slt i32* %index_ptr2567, 50
  br i1 %comparison_result2568, label %__body783, label %__end784

__fresh802:
  br label %__body783

__body783:
  %i2569 = load i32* %index_ptr2567
  %index_ptr2567 = add i32* %index_ptr2567, 1
  br label %__compare782

__fresh803:
  br label %__end784

__end784:
  %c2570 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2565, { i32, [ 0 x i32 ] }** %c2570
  %_lhs2571 = load i32* %low_slot2558
  store i32 %_lhs2571, i32* %i2561
  %_lhs2572 = load i32* %mid_slot2554
  %bop2573 = add i32 %_lhs2572, 1
  store i32 %bop2573, i32* %j2562
  %_lhs2574 = load i32* %low_slot2558
  store i32 %_lhs2574, i32* %k2563
  br label %__cond787

__cond787:
  %_lhs2575 = load i32* %i2561
  %_lhs2576 = load i32* %mid_slot2554
  %bop2577 = icmp sle i32 %_lhs2575, %_lhs2576
  %_lhs2578 = load i32* %j2562
  %_lhs2579 = load i32* %high_slot2556
  %bop2580 = icmp sle i32 %_lhs2578, %_lhs2579
  %bop2581 = and i1 %bop2577, %bop2580
  br i1 %bop2581, label %__body786, label %__post785

__fresh804:
  br label %__body786

__body786:
  %_lhs2582 = load i32* %i2561
  %size_entry_ptr2584 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2585 = load i32* %size_entry_ptr2584
  call void @oat_array_bounds_check( i32 %size2585, i32 %_lhs2582 )
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2582
  %_lhs2586 = load i32* %index_ptr2583
  %_lhs2587 = load i32* %j2562
  %size_entry_ptr2589 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2590 = load i32* %size_entry_ptr2589
  call void @oat_array_bounds_check( i32 %size2590, i32 %_lhs2587 )
  %index_ptr2588 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2587
  %_lhs2591 = load i32* %index_ptr2588
  %bop2592 = icmp slt i32 %_lhs2586, %_lhs2591
  br i1 %bop2592, label %__then790, label %__else789

__fresh805:
  br label %__then790

__then790:
  %_lhs2593 = load i32* %k2563
  %size_entry_ptr2595 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 0
  %size2596 = load i32* %size_entry_ptr2595
  call void @oat_array_bounds_check( i32 %size2596, i32 %_lhs2593 )
  %index_ptr2594 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 1, i32 %_lhs2593
  %_lhs2597 = load i32* %i2561
  %size_entry_ptr2599 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2600 = load i32* %size_entry_ptr2599
  call void @oat_array_bounds_check( i32 %size2600, i32 %_lhs2597 )
  %index_ptr2598 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2597
  %_lhs2601 = load i32* %index_ptr2598
  store i32 %_lhs2601, i32* %index_ptr2594
  %_lhs2602 = load i32* %k2563
  %bop2603 = add i32 %_lhs2602, 1
  store i32 %bop2603, i32* %k2563
  %_lhs2604 = load i32* %i2561
  %bop2605 = add i32 %_lhs2604, 1
  store i32 %bop2605, i32* %i2561
  br label %__merge788

__fresh806:
  br label %__else789

__else789:
  %_lhs2606 = load i32* %k2563
  %size_entry_ptr2608 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 0
  %size2609 = load i32* %size_entry_ptr2608
  call void @oat_array_bounds_check( i32 %size2609, i32 %_lhs2606 )
  %index_ptr2607 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 1, i32 %_lhs2606
  %_lhs2610 = load i32* %j2562
  %size_entry_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2613 = load i32* %size_entry_ptr2612
  call void @oat_array_bounds_check( i32 %size2613, i32 %_lhs2610 )
  %index_ptr2611 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2610
  %_lhs2614 = load i32* %index_ptr2611
  store i32 %_lhs2614, i32* %index_ptr2607
  %_lhs2615 = load i32* %k2563
  %bop2616 = add i32 %_lhs2615, 1
  store i32 %bop2616, i32* %k2563
  %_lhs2617 = load i32* %j2562
  %bop2618 = add i32 %_lhs2617, 1
  store i32 %bop2618, i32* %j2562
  br label %__merge788

__merge788:
  br label %__cond787

__fresh807:
  br label %__post785

__post785:
  br label %__cond793

__cond793:
  %_lhs2619 = load i32* %i2561
  %_lhs2620 = load i32* %mid_slot2554
  %bop2621 = icmp sle i32 %_lhs2619, %_lhs2620
  br i1 %bop2621, label %__body792, label %__post791

__fresh808:
  br label %__body792

__body792:
  %_lhs2622 = load i32* %k2563
  %size_entry_ptr2624 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 0
  %size2625 = load i32* %size_entry_ptr2624
  call void @oat_array_bounds_check( i32 %size2625, i32 %_lhs2622 )
  %index_ptr2623 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 1, i32 %_lhs2622
  %_lhs2626 = load i32* %i2561
  %size_entry_ptr2628 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2629 = load i32* %size_entry_ptr2628
  call void @oat_array_bounds_check( i32 %size2629, i32 %_lhs2626 )
  %index_ptr2627 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2626
  %_lhs2630 = load i32* %index_ptr2627
  store i32 %_lhs2630, i32* %index_ptr2623
  %_lhs2631 = load i32* %k2563
  %bop2632 = add i32 %_lhs2631, 1
  store i32 %bop2632, i32* %k2563
  %_lhs2633 = load i32* %i2561
  %bop2634 = add i32 %_lhs2633, 1
  store i32 %bop2634, i32* %i2561
  br label %__cond793

__fresh809:
  br label %__post791

__post791:
  br label %__cond796

__cond796:
  %_lhs2635 = load i32* %j2562
  %_lhs2636 = load i32* %high_slot2556
  %bop2637 = icmp sle i32 %_lhs2635, %_lhs2636
  br i1 %bop2637, label %__body795, label %__post794

__fresh810:
  br label %__body795

__body795:
  %_lhs2638 = load i32* %k2563
  %size_entry_ptr2640 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 0
  %size2641 = load i32* %size_entry_ptr2640
  call void @oat_array_bounds_check( i32 %size2641, i32 %_lhs2638 )
  %index_ptr2639 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 1, i32 %_lhs2638
  %_lhs2642 = load i32* %j2562
  %size_entry_ptr2644 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2645 = load i32* %size_entry_ptr2644
  call void @oat_array_bounds_check( i32 %size2645, i32 %_lhs2642 )
  %index_ptr2643 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2642
  %_lhs2646 = load i32* %index_ptr2643
  store i32 %_lhs2646, i32* %index_ptr2639
  %_lhs2647 = load i32* %k2563
  %bop2648 = add i32 %_lhs2647, 1
  store i32 %bop2648, i32* %k2563
  %_lhs2649 = load i32* %j2562
  %bop2650 = add i32 %_lhs2649, 1
  store i32 %bop2650, i32* %j2562
  br label %__cond796

__fresh811:
  br label %__post794

__post794:
  %_lhs2651 = load i32* %low_slot2558
  store i32 %_lhs2651, i32* %i2561
  br label %__cond799

__cond799:
  %_lhs2652 = load i32* %i2561
  %_lhs2653 = load i32* %k2563
  %bop2654 = icmp slt i32 %_lhs2652, %_lhs2653
  br i1 %bop2654, label %__body798, label %__post797

__fresh812:
  br label %__body798

__body798:
  %_lhs2655 = load i32* %i2561
  %size_entry_ptr2657 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 0
  %size2658 = load i32* %size_entry_ptr2657
  call void @oat_array_bounds_check( i32 %size2658, i32 %_lhs2655 )
  %index_ptr2656 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2560, i32 0, i32 1, i32 %_lhs2655
  %_lhs2659 = load i32* %i2561
  %size_entry_ptr2661 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 0
  %size2662 = load i32* %size_entry_ptr2661
  call void @oat_array_bounds_check( i32 %size2662, i32 %_lhs2659 )
  %index_ptr2660 = getelementptr { i32, [ 0 x i32 ] }* %c2570, i32 0, i32 1, i32 %_lhs2659
  %_lhs2663 = load i32* %index_ptr2660
  store i32 %_lhs2663, i32* %index_ptr2656
  %_lhs2664 = load i32* %i2561
  %bop2665 = add i32 %_lhs2664, 1
  store i32 %bop2665, i32* %i2561
  br label %__cond799

__fresh813:
  br label %__post797

__post797:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2532, i32 %low2530, i32 %high2528){

__fresh779:
  %a_slot2533 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2532, { i32, [ 0 x i32 ] }** %a_slot2533
  %low_slot2531 = alloca i32
  store i32 %low2530, i32* %low_slot2531
  %high_slot2529 = alloca i32
  store i32 %high2528, i32* %high_slot2529
  %mid2534 = alloca i32
  store i32 0, i32* %mid2534
  %_lhs2535 = load i32* %low_slot2531
  %_lhs2536 = load i32* %high_slot2529
  %bop2537 = icmp slt i32 %_lhs2535, %_lhs2536
  br i1 %bop2537, label %__then778, label %__else777

__fresh780:
  br label %__then778

__then778:
  %_lhs2538 = load i32* %low_slot2531
  %_lhs2539 = load i32* %high_slot2529
  %bop2540 = add i32 %_lhs2538, %_lhs2539
  %bop2541 = ashr i32 %bop2540, 1
  store i32 %bop2541, i32* %mid2534
  %_lhs2544 = load i32* %mid2534
  %_lhs2543 = load i32* %low_slot2531
  %_lhs2542 = load { i32, [ 0 x i32 ] }** %a_slot2533
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2542, i32 %_lhs2543, i32 %_lhs2544 )
  %_lhs2548 = load i32* %high_slot2529
  %_lhs2546 = load i32* %mid2534
  %bop2547 = add i32 %_lhs2546, 1
  %_lhs2545 = load { i32, [ 0 x i32 ] }** %a_slot2533
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2545, i32 %bop2547, i32 %_lhs2548 )
  %_lhs2552 = load i32* %mid2534
  %_lhs2551 = load i32* %high_slot2529
  %_lhs2550 = load i32* %low_slot2531
  %_lhs2549 = load { i32, [ 0 x i32 ] }** %a_slot2533
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2549, i32 %_lhs2550, i32 %_lhs2551, i32 %_lhs2552 )
  br label %__merge776

__fresh781:
  br label %__else777

__else777:
  br label %__merge776

__merge776:
  ret void
}


define i32 @program (i32 %argc2513, { i32, [ 0 x i8* ] }* %argv2511){

__fresh775:
  %argc_slot2514 = alloca i32
  store i32 %argc2513, i32* %argc_slot2514
  %argv_slot2512 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2511, { i32, [ 0 x i8* ] }** %argv_slot2512
  %i2515 = alloca i32
  store i32 0, i32* %i2515
  %_lhs2516 = load { i32, [ 0 x i32 ] }** @a2510
  %ret2517 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2516 )
  call void @print_string( i8* %ret2517 )
  %_lhs2518 = load { i32, [ 0 x i32 ] }** @a2510
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2518, i32 0, i32 9 )
  %strval2520 = load i8** @_oat_string2519
  call void @print_string( i8* %strval2520 )
  %_lhs2521 = load { i32, [ 0 x i32 ] }** @a2510
  %ret2522 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2521 )
  call void @print_string( i8* %ret2522 )
  %strval2524 = load i8** @_oat_string2523
  call void @print_string( i8* %strval2524 )
  %_lhs2525 = load i32* %i2515
  ret i32 %_lhs2525
}


define void @a2510.init (){

__fresh774:
  %array_ptr2498 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2499 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2498 to { i32, [ 0 x i32 ] }* 
  %index_ptr2500 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2500
  %index_ptr2501 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2501
  %index_ptr2502 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2502
  %index_ptr2503 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2503
  %index_ptr2504 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2504
  %index_ptr2505 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2505
  %index_ptr2506 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2506
  %index_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2507
  %index_ptr2508 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2508
  %index_ptr2509 = getelementptr { i32, [ 0 x i32 ] }* %array2499, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2509
  store { i32, [ 0 x i32 ] }* %array2499, { i32, [ 0 x i32 ] }** @a2510
  ret void
}


