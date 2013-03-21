declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh297:
  ret void
}


define i32 @program (i32 %argc825, { i32, [ 0 x i8* ] }* %argv823){

__fresh278:
  %argc_slot826 = alloca i32
  store i32 %argc825, i32* %argc_slot826
  %argv_slot824 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv823, { i32, [ 0 x i8* ] }** %argv_slot824
  %array_ptr827 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array828 = bitcast { i32, [ 0 x i32 ] }* %array_ptr827 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr830
  br label %__compare263

__fresh279:
  br label %__compare263

__compare263:
  %comparison_result831 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr830, 3
  br i1 %comparison_result831, label %__body264, label %__end265

__fresh280:
  br label %__body264

__body264:
  %i832 = load { i32, [ 0 x i32 ] }** %index_ptr830
  %array_ptr833 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array834 = bitcast { i32, [ 0 x i32 ] }* %array_ptr833 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr836
  br label %__compare260

__fresh281:
  br label %__compare260

__compare260:
  %comparison_result837 = icmp slt i32* %index_ptr836, 3
  br i1 %comparison_result837, label %__body261, label %__end262

__fresh282:
  br label %__body261

__body261:
  %j838 = load i32* %index_ptr836
  %_lhs839 = load i32* %j838
  %index_ptr836 = add i32* %index_ptr836, 1
  br label %__compare260

__fresh283:
  br label %__end262

__end262:
  %index_ptr830 = add { i32, [ 0 x i32 ] }** %index_ptr830, 1
  br label %__compare263

__fresh284:
  br label %__end265

__end265:
  %a840 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array828, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a840
  %array_ptr841 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array842 = bitcast { i32, [ 0 x i32 ] }* %array_ptr841 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr844
  br label %__compare269

__fresh285:
  br label %__compare269

__compare269:
  %comparison_result845 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr844, 4
  br i1 %comparison_result845, label %__body270, label %__end271

__fresh286:
  br label %__body270

__body270:
  %i846 = load { i32, [ 0 x i32 ] }** %index_ptr844
  %array_ptr847 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array848 = bitcast { i32, [ 0 x i32 ] }* %array_ptr847 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr850
  br label %__compare266

__fresh287:
  br label %__compare266

__compare266:
  %comparison_result851 = icmp slt i32* %index_ptr850, 5
  br i1 %comparison_result851, label %__body267, label %__end268

__fresh288:
  br label %__body267

__body267:
  %j852 = load i32* %index_ptr850
  %_lhs853 = load i32* %i846
  %_lhs854 = load i32* %j852
  %bop855 = mul i32 %_lhs853, %_lhs854
  %index_ptr850 = add i32* %index_ptr850, 1
  br label %__compare266

__fresh289:
  br label %__end268

__end268:
  %index_ptr844 = add { i32, [ 0 x i32 ] }** %index_ptr844, 1
  br label %__compare269

__fresh290:
  br label %__end271

__end271:
  %arr856 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array842, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr856
  %size_entry_ptr858 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr856, i32 0, i32 0
  %size859 = load i32* %size_entry_ptr858
  call void @oat_array_bounds_check( i32 %size859, i32 3 )
  %index_ptr857 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr856, i32 0, i32 1, i32 3
  %size_entry_ptr861 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr856, i32 0, i32 0
  %size862 = load i32* %size_entry_ptr861
  call void @oat_array_bounds_check( i32 %size862, i32 4 )
  %index_ptr860 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr856, i32 0, i32 1, i32 4
  %_lhs863 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr856
  %size_entry_ptr865 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a840, i32 0, i32 0
  %size866 = load i32* %size_entry_ptr865
  call void @oat_array_bounds_check( i32 %size866, i32 1 )
  %index_ptr864 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a840, i32 0, i32 1, i32 1
  %size_entry_ptr868 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a840, i32 0, i32 0
  %size869 = load i32* %size_entry_ptr868
  call void @oat_array_bounds_check( i32 %size869, i32 2 )
  %index_ptr867 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a840, i32 0, i32 1, i32 2
  %_lhs870 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a840
  %bop871 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs863, %_lhs870
  %array_ptr872 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array873 = bitcast { i32, [ 0 x i32 ] }* %array_ptr872 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr875
  br label %__compare275

__fresh291:
  br label %__compare275

__compare275:
  %comparison_result876 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr875, 3
  br i1 %comparison_result876, label %__body276, label %__end277

__fresh292:
  br label %__body276

__body276:
  %i877 = load { i32, [ 0 x i32 ] }** %index_ptr875
  %array_ptr878 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array879 = bitcast { i32, [ 0 x i32 ] }* %array_ptr878 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr881
  br label %__compare272

__fresh293:
  br label %__compare272

__compare272:
  %comparison_result882 = icmp slt i32* %index_ptr881, 3
  br i1 %comparison_result882, label %__body273, label %__end274

__fresh294:
  br label %__body273

__body273:
  %j883 = load i32* %index_ptr881
  %_lhs884 = load i32* %i877
  %_lhs885 = load i32* %j883
  %bop886 = mul i32 %_lhs884, %_lhs885
  %index_ptr881 = add i32* %index_ptr881, 1
  br label %__compare272

__fresh295:
  br label %__end274

__end274:
  %index_ptr875 = add { i32, [ 0 x i32 ] }** %index_ptr875, 1
  br label %__compare275

__fresh296:
  br label %__end277

__end277:
  %ret887 = call i32 @f ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array873 )
  %bop888 = add i32 %bop871, %ret887
  %ret889 = call i32 @g ( i32 4 )
  %bop890 = add i32 %bop888, %ret889
  ret i32 %bop890
}


define i32 @g (i32 %x800){

__fresh253:
  %x_slot801 = alloca i32
  store i32 %x800, i32* %x_slot801
  %array_ptr802 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array803 = bitcast { i32, [ 0 x i32 ] }* %array_ptr802 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr805
  br label %__compare250

__fresh254:
  br label %__compare250

__compare250:
  %comparison_result806 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr805, 3
  br i1 %comparison_result806, label %__body251, label %__end252

__fresh255:
  br label %__body251

__body251:
  %i807 = load { i32, [ 0 x i32 ] }** %index_ptr805
  %array_ptr808 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array809 = bitcast { i32, [ 0 x i32 ] }* %array_ptr808 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr811
  br label %__compare247

__fresh256:
  br label %__compare247

__compare247:
  %comparison_result812 = icmp slt i32* %index_ptr811, 3
  br i1 %comparison_result812, label %__body248, label %__end249

__fresh257:
  br label %__body248

__body248:
  %j813 = load i32* %index_ptr811
  %_lhs814 = load i32* %x_slot801
  %index_ptr811 = add i32* %index_ptr811, 1
  br label %__compare247

__fresh258:
  br label %__end249

__end249:
  %index_ptr805 = add { i32, [ 0 x i32 ] }** %index_ptr805, 1
  br label %__compare250

__fresh259:
  br label %__end252

__end252:
  %arr815 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array803, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr815
  %size_entry_ptr817 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr815, i32 0, i32 0
  %size818 = load i32* %size_entry_ptr817
  call void @oat_array_bounds_check( i32 %size818, i32 1 )
  %index_ptr816 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr815, i32 0, i32 1, i32 1
  %size_entry_ptr820 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr815, i32 0, i32 0
  %size821 = load i32* %size_entry_ptr820
  call void @oat_array_bounds_check( i32 %size821, i32 1 )
  %index_ptr819 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %arr815, i32 0, i32 1, i32 1
  %_lhs822 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %arr815
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs822
}


define i32 @f ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a791){

__fresh246:
  %a_slot792 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a791, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot792
  %size_entry_ptr794 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot792, i32 0, i32 0
  %size795 = load i32* %size_entry_ptr794
  call void @oat_array_bounds_check( i32 %size795, i32 1 )
  %index_ptr793 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot792, i32 0, i32 1, i32 1
  %size_entry_ptr797 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot792, i32 0, i32 0
  %size798 = load i32* %size_entry_ptr797
  call void @oat_array_bounds_check( i32 %size798, i32 1 )
  %index_ptr796 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a_slot792, i32 0, i32 1, i32 1
  %_lhs799 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a_slot792
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs799
}


