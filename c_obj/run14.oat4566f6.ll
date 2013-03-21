declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh245:
  ret void
}


define i32 @program (i32 %argc750, { i32, [ 0 x i8* ] }* %argv748){

__fresh235:
  %argc_slot751 = alloca i32
  store i32 %argc750, i32* %argc_slot751
  %argv_slot749 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv748, { i32, [ 0 x i8* ] }** %argv_slot749
  %array_ptr752 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array753 = bitcast { i32, [ 0 x i32 ] }* %array_ptr752 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr755
  br label %__compare226

__fresh236:
  br label %__compare226

__compare226:
  %comparison_result756 = icmp slt i32* %index_ptr755, 3
  br i1 %comparison_result756, label %__body227, label %__end228

__fresh237:
  br label %__body227

__body227:
  %i757 = load i32* %index_ptr755
  %_lhs758 = load i32* %i757
  %index_ptr755 = add i32* %index_ptr755, 1
  br label %__compare226

__fresh238:
  br label %__end228

__end228:
  %a759 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array753, { i32, [ 0 x i32 ] }** %a759
  %array_ptr760 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array761 = bitcast { i32, [ 0 x i32 ] }* %array_ptr760 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr763
  br label %__compare229

__fresh239:
  br label %__compare229

__compare229:
  %comparison_result764 = icmp slt i32* %index_ptr763, 4
  br i1 %comparison_result764, label %__body230, label %__end231

__fresh240:
  br label %__body230

__body230:
  %i765 = load i32* %index_ptr763
  %_lhs766 = load i32* %i765
  %_lhs767 = load i32* %i765
  %bop768 = mul i32 %_lhs766, %_lhs767
  %index_ptr763 = add i32* %index_ptr763, 1
  br label %__compare229

__fresh241:
  br label %__end231

__end231:
  %arr769 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array761, { i32, [ 0 x i32 ] }** %arr769
  %size_entry_ptr771 = getelementptr { i32, [ 0 x i32 ] }* %arr769, i32 0, i32 0
  %size772 = load i32* %size_entry_ptr771
  call void @oat_array_bounds_check( i32 %size772, i32 3 )
  %index_ptr770 = getelementptr { i32, [ 0 x i32 ] }* %arr769, i32 0, i32 1, i32 3
  %_lhs773 = load { i32, [ 0 x i32 ] }** %arr769
  %size_entry_ptr775 = getelementptr { i32, [ 0 x i32 ] }* %a759, i32 0, i32 0
  %size776 = load i32* %size_entry_ptr775
  call void @oat_array_bounds_check( i32 %size776, i32 1 )
  %index_ptr774 = getelementptr { i32, [ 0 x i32 ] }* %a759, i32 0, i32 1, i32 1
  %_lhs777 = load { i32, [ 0 x i32 ] }** %a759
  %bop778 = add { i32, [ 0 x i32 ] }* %_lhs773, %_lhs777
  %array_ptr779 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array780 = bitcast { i32, [ 0 x i32 ] }* %array_ptr779 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr782
  br label %__compare232

__fresh242:
  br label %__compare232

__compare232:
  %comparison_result783 = icmp slt i32* %index_ptr782, 3
  br i1 %comparison_result783, label %__body233, label %__end234

__fresh243:
  br label %__body233

__body233:
  %i784 = load i32* %index_ptr782
  %_lhs785 = load i32* %i784
  %bop786 = mul i32 2, %_lhs785
  %index_ptr782 = add i32* %index_ptr782, 1
  br label %__compare232

__fresh244:
  br label %__end234

__end234:
  %ret787 = call i32 @f ( { i32, [ 0 x i32 ] }* %array780 )
  %bop788 = add i32 %bop778, %ret787
  %ret789 = call i32 @g ( i32 4 )
  %bop790 = add i32 %bop788, %ret789
  ret i32 %bop790
}


define i32 @g (i32 %x734){

__fresh222:
  %x_slot735 = alloca i32
  store i32 %x734, i32* %x_slot735
  %array_ptr736 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array737 = bitcast { i32, [ 0 x i32 ] }* %array_ptr736 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr739
  br label %__compare219

__fresh223:
  br label %__compare219

__compare219:
  %comparison_result740 = icmp slt i32* %index_ptr739, 3
  br i1 %comparison_result740, label %__body220, label %__end221

__fresh224:
  br label %__body220

__body220:
  %i741 = load i32* %index_ptr739
  %_lhs742 = load i32* %x_slot735
  %index_ptr739 = add i32* %index_ptr739, 1
  br label %__compare219

__fresh225:
  br label %__end221

__end221:
  %arr743 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array737, { i32, [ 0 x i32 ] }** %arr743
  %size_entry_ptr745 = getelementptr { i32, [ 0 x i32 ] }* %arr743, i32 0, i32 0
  %size746 = load i32* %size_entry_ptr745
  call void @oat_array_bounds_check( i32 %size746, i32 1 )
  %index_ptr744 = getelementptr { i32, [ 0 x i32 ] }* %arr743, i32 0, i32 1, i32 1
  %_lhs747 = load { i32, [ 0 x i32 ] }** %arr743
  ret { i32, [ 0 x i32 ] }* %_lhs747
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a728){

__fresh218:
  %a_slot729 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a728, { i32, [ 0 x i32 ] }** %a_slot729
  %size_entry_ptr731 = getelementptr { i32, [ 0 x i32 ] }* %a_slot729, i32 0, i32 0
  %size732 = load i32* %size_entry_ptr731
  call void @oat_array_bounds_check( i32 %size732, i32 1 )
  %index_ptr730 = getelementptr { i32, [ 0 x i32 ] }* %a_slot729, i32 0, i32 1, i32 1
  %_lhs733 = load { i32, [ 0 x i32 ] }** %a_slot729
  ret { i32, [ 0 x i32 ] }* %_lhs733
}


