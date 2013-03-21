declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh358:
  ret void
}


define i32 @program (i32 %argc788, { i32, [ 0 x i8* ] }* %argv786){

__fresh339:
  %argc_slot789 = alloca i32
  store i32 %argc788, i32* %argc_slot789
  %argv_slot787 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv786, { i32, [ 0 x i8* ] }** %argv_slot787
  %array_ptr790 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array791 = bitcast { i32, [ 0 x i32 ] }* %array_ptr790 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr793
  br label %__compare324

__fresh340:
  br label %__compare324

__compare324:
  %comparison_result794 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr793, 3
  br i1 %comparison_result794, label %__body325, label %__end326

__fresh341:
  br label %__body325

__body325:
  %i795 = load { i32, [ 0 x i32 ] }** %index_ptr793
  %array_ptr796 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array797 = bitcast { i32, [ 0 x i32 ] }* %array_ptr796 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr799
  br label %__compare321

__fresh342:
  br label %__compare321

__compare321:
  %comparison_result800 = icmp slt i32* %index_ptr799, 3
  br i1 %comparison_result800, label %__body322, label %__end323

__fresh343:
  br label %__body322

__body322:
  %j801 = load i32* %index_ptr799
  %_lhs802 = load i32* %j801
  %index_ptr799 = add i32* %index_ptr799, 1
  br label %__compare321

__fresh344:
  br label %__end323

__end323:
  %index_ptr793 = add { i32, [ 0 x i32 ] }** %index_ptr793, 1
  br label %__compare324

__fresh345:
  br label %__end326

__end326:
  %a803 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array791, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a803
  %array_ptr804 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array805 = bitcast { i32, [ 0 x i32 ] }* %array_ptr804 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr807
  br label %__compare330

__fresh346:
  br label %__compare330

__compare330:
  %comparison_result808 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr807, 4
  br i1 %comparison_result808, label %__body331, label %__end332

__fresh347:
  br label %__body331

__body331:
  %i809 = load { i32, [ 0 x i32 ] }** %index_ptr807
  %array_ptr810 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array811 = bitcast { i32, [ 0 x i32 ] }* %array_ptr810 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr813
  br label %__compare327

__fresh348:
  br label %__compare327

__compare327:
  %comparison_result814 = icmp slt i32* %index_ptr813, 5
  br i1 %comparison_result814, label %__body328, label %__end329

__fresh349:
  br label %__body328

__body328:
  %j815 = load i32* %index_ptr813
  %_lhs816 = load i32* %i809
  %_lhs817 = load i32* %j815
  %bop818 = mul i32 %_lhs816, %_lhs817
  %index_ptr813 = add i32* %index_ptr813, 1
  br label %__compare327

__fresh350:
  br label %__end329

__end329:
  %index_ptr807 = add { i32, [ 0 x i32 ] }** %index_ptr807, 1
  br label %__compare330

__fresh351:
  br label %__end332

__end332:
  %arr819 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array805, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr819
  %size_ptr821 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr819, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr821, i32 3 )
  %index_ptr820 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr819, i32 0, i32 1, i32 3
  %size_ptr823 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr819, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr823, i32 4 )
  %index_ptr822 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr819, i32 0, i32 1, i32 4
  %_lhs824 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr819
  %size_ptr826 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a803, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr826, i32 1 )
  %index_ptr825 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a803, i32 0, i32 1, i32 1
  %size_ptr828 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a803, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr828, i32 2 )
  %index_ptr827 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a803, i32 0, i32 1, i32 2
  %_lhs829 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a803
  %bop830 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs824, %_lhs829
  %array_ptr831 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array832 = bitcast { i32, [ 0 x i32 ] }* %array_ptr831 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr834
  br label %__compare336

__fresh352:
  br label %__compare336

__compare336:
  %comparison_result835 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr834, 3
  br i1 %comparison_result835, label %__body337, label %__end338

__fresh353:
  br label %__body337

__body337:
  %i836 = load { i32, [ 0 x i32 ] }** %index_ptr834
  %array_ptr837 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array838 = bitcast { i32, [ 0 x i32 ] }* %array_ptr837 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr840
  br label %__compare333

__fresh354:
  br label %__compare333

__compare333:
  %comparison_result841 = icmp slt i32* %index_ptr840, 3
  br i1 %comparison_result841, label %__body334, label %__end335

__fresh355:
  br label %__body334

__body334:
  %j842 = load i32* %index_ptr840
  %_lhs843 = load i32* %i836
  %_lhs844 = load i32* %j842
  %bop845 = mul i32 %_lhs843, %_lhs844
  %index_ptr840 = add i32* %index_ptr840, 1
  br label %__compare333

__fresh356:
  br label %__end335

__end335:
  %index_ptr834 = add { i32, [ 0 x i32 ] }** %index_ptr834, 1
  br label %__compare336

__fresh357:
  br label %__end338

__end338:
  %ret846 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array832 )
  %bop847 = add i32 %bop830, %ret846
  %ret848 = call i32 @g ( i32 4 )
  %bop849 = add i32 %bop847, %ret848
  ret i32 %bop849
}


define i32 @g (i32 %x765){

__fresh314:
  %x_slot766 = alloca i32
  store i32 %x765, i32* %x_slot766
  %array_ptr767 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array768 = bitcast { i32, [ 0 x i32 ] }* %array_ptr767 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr770
  br label %__compare311

__fresh315:
  br label %__compare311

__compare311:
  %comparison_result771 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr770, 3
  br i1 %comparison_result771, label %__body312, label %__end313

__fresh316:
  br label %__body312

__body312:
  %i772 = load { i32, [ 0 x i32 ] }** %index_ptr770
  %array_ptr773 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array774 = bitcast { i32, [ 0 x i32 ] }* %array_ptr773 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr776
  br label %__compare308

__fresh317:
  br label %__compare308

__compare308:
  %comparison_result777 = icmp slt i32* %index_ptr776, 3
  br i1 %comparison_result777, label %__body309, label %__end310

__fresh318:
  br label %__body309

__body309:
  %j778 = load i32* %index_ptr776
  %_lhs779 = load i32* %x_slot766
  %index_ptr776 = add i32* %index_ptr776, 1
  br label %__compare308

__fresh319:
  br label %__end310

__end310:
  %index_ptr770 = add { i32, [ 0 x i32 ] }** %index_ptr770, 1
  br label %__compare311

__fresh320:
  br label %__end313

__end313:
  %arr780 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array768, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr780
  %size_ptr782 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr780, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr782, i32 1 )
  %index_ptr781 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr780, i32 0, i32 1, i32 1
  %size_ptr784 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr780, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr784, i32 1 )
  %index_ptr783 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr780, i32 0, i32 1, i32 1
  %_lhs785 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr780
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs785
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a758){

__fresh307:
  %a_slot759 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a758, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot759
  %size_ptr761 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot759, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr761, i32 1 )
  %index_ptr760 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot759, i32 0, i32 1, i32 1
  %size_ptr763 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot759, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr763, i32 1 )
  %index_ptr762 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot759, i32 0, i32 1, i32 1
  %_lhs764 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot759
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs764
}


