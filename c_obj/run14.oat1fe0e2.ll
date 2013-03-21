declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh296:
  ret void
}


define i32 @program (i32 %argc719, { i32, [ 0 x i8* ] }* %argv717){

__fresh286:
  %argc_slot720 = alloca i32
  store i32 %argc719, i32* %argc_slot720
  %argv_slot718 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv717, { i32, [ 0 x i8* ] }** %argv_slot718
  %array_ptr721 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array722 = bitcast { i32, [ 0 x i32 ] }* %array_ptr721 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr724
  br label %__compare277

__fresh287:
  br label %__compare277

__compare277:
  %comparison_result725 = icmp slt i32* %index_ptr724, 3
  br i1 %comparison_result725, label %__body278, label %__end279

__fresh288:
  br label %__body278

__body278:
  %i726 = load i32* %index_ptr724
  %_lhs727 = load i32* %i726
  %index_ptr724 = add i32* %index_ptr724, 1
  br label %__compare277

__fresh289:
  br label %__end279

__end279:
  %a728 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array722, { i32, [ 0 x i32 ] }** %a728
  %array_ptr729 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array730 = bitcast { i32, [ 0 x i32 ] }* %array_ptr729 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr732
  br label %__compare280

__fresh290:
  br label %__compare280

__compare280:
  %comparison_result733 = icmp slt i32* %index_ptr732, 4
  br i1 %comparison_result733, label %__body281, label %__end282

__fresh291:
  br label %__body281

__body281:
  %i734 = load i32* %index_ptr732
  %_lhs735 = load i32* %i734
  %_lhs736 = load i32* %i734
  %bop737 = mul i32 %_lhs735, %_lhs736
  %index_ptr732 = add i32* %index_ptr732, 1
  br label %__compare280

__fresh292:
  br label %__end282

__end282:
  %arr738 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array730, { i32, [ 0 x i32 ] }** %arr738
  %size_ptr740 = getelementptr { i32, [ 0 x i32 ] }* %arr738, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr740, i32 3 )
  %index_ptr739 = getelementptr { i32, [ 0 x i32 ] }* %arr738, i32 0, i32 1, i32 3
  %_lhs741 = load { i32, [ 0 x i32 ] }** %arr738
  %size_ptr743 = getelementptr { i32, [ 0 x i32 ] }* %a728, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr743, i32 1 )
  %index_ptr742 = getelementptr { i32, [ 0 x i32 ] }* %a728, i32 0, i32 1, i32 1
  %_lhs744 = load { i32, [ 0 x i32 ] }** %a728
  %bop745 = add { i32, [ 0 x i32 ] }* %_lhs741, %_lhs744
  %array_ptr746 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array747 = bitcast { i32, [ 0 x i32 ] }* %array_ptr746 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr749
  br label %__compare283

__fresh293:
  br label %__compare283

__compare283:
  %comparison_result750 = icmp slt i32* %index_ptr749, 3
  br i1 %comparison_result750, label %__body284, label %__end285

__fresh294:
  br label %__body284

__body284:
  %i751 = load i32* %index_ptr749
  %_lhs752 = load i32* %i751
  %bop753 = mul i32 2, %_lhs752
  %index_ptr749 = add i32* %index_ptr749, 1
  br label %__compare283

__fresh295:
  br label %__end285

__end285:
  %ret754 = call i32 @f ( { i32, [ 0 x i32 ] }* %array747 )
  %bop755 = add i32 %bop745, %ret754
  %ret756 = call i32 @g ( i32 4 )
  %bop757 = add i32 %bop755, %ret756
  ret i32 %bop757
}


define i32 @g (i32 %x704){

__fresh273:
  %x_slot705 = alloca i32
  store i32 %x704, i32* %x_slot705
  %array_ptr706 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array707 = bitcast { i32, [ 0 x i32 ] }* %array_ptr706 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr709
  br label %__compare270

__fresh274:
  br label %__compare270

__compare270:
  %comparison_result710 = icmp slt i32* %index_ptr709, 3
  br i1 %comparison_result710, label %__body271, label %__end272

__fresh275:
  br label %__body271

__body271:
  %i711 = load i32* %index_ptr709
  %_lhs712 = load i32* %x_slot705
  %index_ptr709 = add i32* %index_ptr709, 1
  br label %__compare270

__fresh276:
  br label %__end272

__end272:
  %arr713 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array707, { i32, [ 0 x i32 ] }** %arr713
  %size_ptr715 = getelementptr { i32, [ 0 x i32 ] }* %arr713, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr715, i32 1 )
  %index_ptr714 = getelementptr { i32, [ 0 x i32 ] }* %arr713, i32 0, i32 1, i32 1
  %_lhs716 = load { i32, [ 0 x i32 ] }** %arr713
  ret { i32, [ 0 x i32 ] }* %_lhs716
}


define i32 @f ({ i32, [ 0 x i32 ] }* %a699){

__fresh269:
  %a_slot700 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a699, { i32, [ 0 x i32 ] }** %a_slot700
  %size_ptr702 = getelementptr { i32, [ 0 x i32 ] }* %a_slot700, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr702, i32 1 )
  %index_ptr701 = getelementptr { i32, [ 0 x i32 ] }* %a_slot700, i32 0, i32 1, i32 1
  %_lhs703 = load { i32, [ 0 x i32 ] }** %a_slot700
  ret { i32, [ 0 x i32 ] }* %_lhs703
}


