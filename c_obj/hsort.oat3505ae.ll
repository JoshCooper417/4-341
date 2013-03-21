declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2472 = global i32 8, align 4
@b2471 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2471.init
define void @oat_init (){

__fresh1176:
  call void @b2471.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2590, i32 %i2588, i32 %n2586){

__fresh1167:
  %a_slot2591 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2590, { i32, [ 0 x i32 ] }** %a_slot2591
  %i_slot2589 = alloca i32
  store i32 %i2588, i32* %i_slot2589
  %n_slot2587 = alloca i32
  store i32 %n2586, i32* %n_slot2587
  %_lhs2592 = load i32* %i_slot2589
  %size_ptr2594 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2594, i32 %_lhs2592 )
  %index_ptr2593 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %_lhs2592
  %_lhs2595 = load { i32, [ 0 x i32 ] }** %a_slot2591
  %v2596 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2595, i32* %v2596
  %_lhs2597 = load i32* %i_slot2589
  %bop2598 = mul i32 %_lhs2597, 2
  %j2599 = alloca i32
  store i32 %bop2598, i32* %j2599
  %done2600 = alloca i32
  store i32 0, i32* %done2600
  br label %__cond1157

__cond1157:
  %_lhs2601 = load i32* %j2599
  %_lhs2602 = load i32* %n_slot2587
  %bop2603 = icmp sle i32 %_lhs2601, %_lhs2602
  %_lhs2604 = load i32* %done2600
  %bop2605 = icmp eq i32 %_lhs2604, 0
  %bop2606 = and i1 %bop2603, %bop2605
  br i1 %bop2606, label %__body1156, label %__post1155

__fresh1168:
  br label %__body1156

__body1156:
  %_lhs2607 = load i32* %j2599
  %_lhs2608 = load i32* %n_slot2587
  %bop2609 = icmp slt i32 %_lhs2607, %_lhs2608
  %_lhs2610 = load i32* %j2599
  %size_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2612, i32 %_lhs2610 )
  %index_ptr2611 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %_lhs2610
  %_lhs2613 = load { i32, [ 0 x i32 ] }** %a_slot2591
  %_lhs2614 = load i32* %j2599
  %bop2615 = add i32 %_lhs2614, 1
  %size_ptr2617 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2617, i32 %bop2615 )
  %index_ptr2616 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %bop2615
  %_lhs2618 = load { i32, [ 0 x i32 ] }** %a_slot2591
  %bop2619 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2613, %_lhs2618
  %bop2620 = and i1 %bop2609, %bop2619
  br i1 %bop2620, label %__then1160, label %__else1159

__fresh1169:
  br label %__then1160

__then1160:
  %_lhs2621 = load i32* %j2599
  %bop2622 = add i32 %_lhs2621, 1
  store i32 %bop2622, i32* %j2599
  br label %__merge1158

__fresh1170:
  br label %__else1159

__else1159:
  br label %__merge1158

__merge1158:
  %_lhs2623 = load i32* %j2599
  %size_ptr2625 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2625, i32 %_lhs2623 )
  %index_ptr2624 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %_lhs2623
  %_lhs2626 = load { i32, [ 0 x i32 ] }** %a_slot2591
  %_lhs2627 = load i32* %j2599
  %bop2628 = ashr i32 %_lhs2627, 1
  %size_ptr2630 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2630, i32 %bop2628 )
  %index_ptr2629 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %bop2628
  %_lhs2631 = load { i32, [ 0 x i32 ] }** %a_slot2591
  %bop2632 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2626, %_lhs2631
  br i1 %bop2632, label %__then1163, label %__else1162

__fresh1171:
  br label %__then1163

__then1163:
  store i32 1, i32* %done2600
  br label %__merge1161

__fresh1172:
  br label %__else1162

__else1162:
  br label %__merge1161

__merge1161:
  %_lhs2633 = load i32* %done2600
  %bop2634 = icmp eq i32 %_lhs2633, 0
  br i1 %bop2634, label %__then1166, label %__else1165

__fresh1173:
  br label %__then1166

__then1166:
  %_lhs2635 = load i32* %j2599
  %bop2636 = ashr i32 %_lhs2635, 1
  %size_ptr2638 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2638, i32 %bop2636 )
  %index_ptr2637 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %bop2636
  %_lhs2639 = load i32* %j2599
  %size_ptr2641 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2641, i32 %_lhs2639 )
  %index_ptr2640 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %_lhs2639
  %_lhs2642 = load { i32, [ 0 x i32 ] }** %a_slot2591
  store { i32, [ 0 x i32 ] }* %_lhs2642, { i32, [ 0 x i32 ] }** %a_slot2591
  %_lhs2643 = load i32* %j2599
  %bop2644 = mul i32 %_lhs2643, 2
  store i32 %bop2644, i32* %j2599
  br label %__merge1164

__fresh1174:
  br label %__else1165

__else1165:
  br label %__merge1164

__merge1164:
  br label %__cond1157

__fresh1175:
  br label %__post1155

__post1155:
  %_lhs2645 = load i32* %j2599
  %bop2646 = ashr i32 %_lhs2645, 1
  %size_ptr2648 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2648, i32 %bop2646 )
  %index_ptr2647 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2591, i32 0, i32 1, i32 %bop2646
  %_lhs2649 = load i32* %v2596
  store i32 %_lhs2649, { i32, [ 0 x i32 ] }** %a_slot2591
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2555, i32 %i2553){

__fresh1152:
  %a_slot2556 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2555, { i32, [ 0 x i32 ] }** %a_slot2556
  %i_slot2554 = alloca i32
  store i32 %i2553, i32* %i_slot2554
  %_lhs2557 = load i32* %i_slot2554
  %size_ptr2559 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2559, i32 %_lhs2557 )
  %index_ptr2558 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 1, i32 %_lhs2557
  %_lhs2560 = load { i32, [ 0 x i32 ] }** %a_slot2556
  %v2561 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2560, i32* %v2561
  br label %__cond1151

__cond1151:
  %_lhs2562 = load i32* %i_slot2554
  %bop2563 = icmp sgt i32 %_lhs2562, 1
  %_lhs2564 = load i32* %i_slot2554
  %bop2565 = ashr i32 %_lhs2564, 1
  %size_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2567, i32 %bop2565 )
  %index_ptr2566 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 1, i32 %bop2565
  %_lhs2568 = load { i32, [ 0 x i32 ] }** %a_slot2556
  %_lhs2569 = load i32* %v2561
  %bop2570 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2568, %_lhs2569
  %bop2571 = and i1 %bop2563, %bop2570
  br i1 %bop2571, label %__body1150, label %__post1149

__fresh1153:
  br label %__body1150

__body1150:
  %_lhs2572 = load i32* %i_slot2554
  %size_ptr2574 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2574, i32 %_lhs2572 )
  %index_ptr2573 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 1, i32 %_lhs2572
  %_lhs2575 = load i32* %i_slot2554
  %bop2576 = ashr i32 %_lhs2575, 1
  %size_ptr2578 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2578, i32 %bop2576 )
  %index_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 1, i32 %bop2576
  %_lhs2579 = load { i32, [ 0 x i32 ] }** %a_slot2556
  store { i32, [ 0 x i32 ] }* %_lhs2579, { i32, [ 0 x i32 ] }** %a_slot2556
  %_lhs2580 = load i32* %i_slot2554
  %bop2581 = ashr i32 %_lhs2580, 1
  store i32 %bop2581, i32* %i_slot2554
  br label %__cond1151

__fresh1154:
  br label %__post1149

__post1149:
  %_lhs2582 = load i32* %i_slot2554
  %size_ptr2584 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2584, i32 %_lhs2582 )
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2556, i32 0, i32 1, i32 %_lhs2582
  %_lhs2585 = load i32* %v2561
  store i32 %_lhs2585, { i32, [ 0 x i32 ] }** %a_slot2556
  ret void
}


define i32 @program (i32 %argc2475, { i32, [ 0 x i8* ] }* %argv2473){

__fresh1137:
  %argc_slot2476 = alloca i32
  store i32 %argc2475, i32* %argc_slot2476
  %argv_slot2474 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2473, { i32, [ 0 x i8* ] }** %argv_slot2474
  %array_ptr2477 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2478 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2477 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2480
  br label %__compare1122

__fresh1138:
  br label %__compare1122

__compare1122:
  %comparison_result2481 = icmp slt i32* %index_ptr2480, 9
  br i1 %comparison_result2481, label %__body1123, label %__end1124

__fresh1139:
  br label %__body1123

__body1123:
  %i2482 = load i32* %index_ptr2480
  %index_ptr2480 = add i32* %index_ptr2480, 1
  br label %__compare1122

__fresh1140:
  br label %__end1124

__end1124:
  %a2483 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2478, { i32, [ 0 x i32 ] }** %a2483
  %i2484 = alloca i32
  store i32 0, i32* %i2484
  %j2485 = alloca i32
  store i32 0, i32* %j2485
  %k2486 = alloca i32
  store i32 0, i32* %k2486
  %r2487 = alloca i32
  store i32 0, i32* %r2487
  %size_ptr2489 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2489, i32 0 )
  %index_ptr2488 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 0
  %_lhs2490 = load { i32, [ 0 x i32 ] }** %a2483
  %check2491 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2490, i32* %check2491
  %size_ptr2493 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2493, i32 0 )
  %index_ptr2492 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 0
  %size_ptr2495 = getelementptr { i32, [ 0 x i32 ] }* @b2471, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2495, i32 0 )
  %index_ptr2494 = getelementptr { i32, [ 0 x i32 ] }* @b2471, i32 0, i32 1, i32 0
  %_lhs2496 = load { i32, [ 0 x i32 ] }** @b2471
  store { i32, [ 0 x i32 ] }* %_lhs2496, { i32, [ 0 x i32 ] }** %a2483
  store i32 1, i32* %i2484
  br label %__cond1127

__cond1127:
  %_lhs2497 = load i32* %i2484
  %_lhs2498 = load i32* @n2472
  %bop2499 = icmp sle i32 %_lhs2497, %_lhs2498
  br i1 %bop2499, label %__body1126, label %__post1125

__fresh1141:
  br label %__body1126

__body1126:
  %_lhs2500 = load i32* %i2484
  %size_ptr2502 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2502, i32 %_lhs2500 )
  %index_ptr2501 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 %_lhs2500
  %_lhs2503 = load i32* %i2484
  %size_ptr2505 = getelementptr { i32, [ 0 x i32 ] }* @b2471, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2505, i32 %_lhs2503 )
  %index_ptr2504 = getelementptr { i32, [ 0 x i32 ] }* @b2471, i32 0, i32 1, i32 %_lhs2503
  %_lhs2506 = load { i32, [ 0 x i32 ] }** @b2471
  %unop2507 = sub i32 0, %_lhs2506
  store i32 %unop2507, { i32, [ 0 x i32 ] }** %a2483
  %_lhs2509 = load i32* %i2484
  %_lhs2508 = load { i32, [ 0 x i32 ] }** %a2483
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2508, i32 %_lhs2509 )
  %_lhs2510 = load i32* %i2484
  %bop2511 = add i32 %_lhs2510, 1
  store i32 %bop2511, i32* %i2484
  br label %__cond1127

__fresh1142:
  br label %__post1125

__post1125:
  %_lhs2512 = load i32* @n2472
  store i32 %_lhs2512, i32* %j2485
  store i32 1, i32* %i2484
  br label %__cond1130

__cond1130:
  %_lhs2513 = load i32* %i2484
  %_lhs2514 = load i32* %j2485
  %bop2515 = icmp sle i32 %_lhs2513, %_lhs2514
  br i1 %bop2515, label %__body1129, label %__post1128

__fresh1143:
  br label %__body1129

__body1129:
  %temp2516 = alloca i32
  store i32 0, i32* %temp2516
  %size_ptr2518 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2518, i32 1 )
  %index_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 1
  %_lhs2519 = load { i32, [ 0 x i32 ] }** %a2483
  store { i32, [ 0 x i32 ] }* %_lhs2519, i32* %temp2516
  %size_ptr2521 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2521, i32 1 )
  %index_ptr2520 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 1
  %_lhs2522 = load i32* @n2472
  %size_ptr2524 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2524, i32 %_lhs2522 )
  %index_ptr2523 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 %_lhs2522
  %_lhs2525 = load { i32, [ 0 x i32 ] }** %a2483
  store { i32, [ 0 x i32 ] }* %_lhs2525, { i32, [ 0 x i32 ] }** %a2483
  %_lhs2526 = load i32* @n2472
  %size_ptr2528 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2528, i32 %_lhs2526 )
  %index_ptr2527 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 %_lhs2526
  %_lhs2529 = load i32* %temp2516
  store i32 %_lhs2529, { i32, [ 0 x i32 ] }** %a2483
  %_lhs2530 = load i32* @n2472
  %bop2531 = sub i32 %_lhs2530, 1
  store i32 %bop2531, i32* @n2472
  %_lhs2533 = load i32* @n2472
  %_lhs2532 = load { i32, [ 0 x i32 ] }** %a2483
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2532, i32 1, i32 %_lhs2533 )
  %_lhs2534 = load i32* %i2484
  %bop2535 = add i32 %_lhs2534, 1
  store i32 %bop2535, i32* %i2484
  br label %__cond1130

__fresh1144:
  br label %__post1128

__post1128:
  %_lhs2536 = load i32* %j2485
  store i32 %_lhs2536, i32* @n2472
  store i32 1, i32* %i2484
  br label %__cond1133

__cond1133:
  %_lhs2537 = load i32* %i2484
  %_lhs2538 = load i32* @n2472
  %bop2539 = icmp sle i32 %_lhs2537, %_lhs2538
  br i1 %bop2539, label %__body1132, label %__post1131

__fresh1145:
  br label %__body1132

__body1132:
  %_lhs2540 = load i32* %i2484
  %size_ptr2542 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2542, i32 %_lhs2540 )
  %index_ptr2541 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 %_lhs2540
  %_lhs2543 = load { i32, [ 0 x i32 ] }** %a2483
  %_lhs2544 = load i32* %check2491
  %bop2545 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2543, %_lhs2544
  br i1 %bop2545, label %__then1136, label %__else1135

__fresh1146:
  br label %__then1136

__then1136:
  %_lhs2546 = load i32* %i2484
  %size_ptr2548 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2548, i32 %_lhs2546 )
  %index_ptr2547 = getelementptr { i32, [ 0 x i32 ] }* %a2483, i32 0, i32 1, i32 %_lhs2546
  %_lhs2549 = load { i32, [ 0 x i32 ] }** %a2483
  store { i32, [ 0 x i32 ] }* %_lhs2549, i32* %check2491
  br label %__merge1134

__fresh1147:
  br label %__else1135

__else1135:
  store i32 1, i32* %r2487
  br label %__merge1134

__merge1134:
  %_lhs2550 = load i32* %i2484
  %bop2551 = add i32 %_lhs2550, 1
  store i32 %bop2551, i32* %i2484
  br label %__cond1133

__fresh1148:
  br label %__post1131

__post1131:
  %_lhs2552 = load i32* %r2487
  ret i32 %_lhs2552
}


define void @b2471.init (){

__fresh1121:
  %array_ptr2452 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2453 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2452 to { i32, [ 0 x i32 ] }* 
  %index_ptr2454 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2454
  %unop2455 = sub i32 0, 110
  %index_ptr2456 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 1
  store i32 %unop2455, i32* %index_ptr2456
  %unop2457 = sub i32 0, 111
  %index_ptr2458 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 2
  store i32 %unop2457, i32* %index_ptr2458
  %unop2459 = sub i32 0, 109
  %index_ptr2460 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 3
  store i32 %unop2459, i32* %index_ptr2460
  %unop2461 = sub i32 0, 117
  %index_ptr2462 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 4
  store i32 %unop2461, i32* %index_ptr2462
  %unop2463 = sub i32 0, 119
  %index_ptr2464 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 5
  store i32 %unop2463, i32* %index_ptr2464
  %unop2465 = sub i32 0, 113
  %index_ptr2466 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 6
  store i32 %unop2465, i32* %index_ptr2466
  %unop2467 = sub i32 0, 120
  %index_ptr2468 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 7
  store i32 %unop2467, i32* %index_ptr2468
  %unop2469 = sub i32 0, 108
  %index_ptr2470 = getelementptr { i32, [ 0 x i32 ] }* %array2453, i32 0, i32 1, i32 8
  store i32 %unop2469, i32* %index_ptr2470
  store { i32, [ 0 x i32 ] }* %array2453, { i32, [ 0 x i32 ] }** @b2471
  ret void
}


