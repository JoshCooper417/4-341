declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1868 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1868.init
define void @oat_init (){

__fresh858:
  call void @a1868.init(  )
  ret void
}


define i32 @program (i32 %argc1871, { i32, [ 0 x i8* ] }* %argv1869){

__fresh857:
  %argc_slot1872 = alloca i32
  store i32 %argc1871, i32* %argc_slot1872
  %argv_slot1870 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1869, { i32, [ 0 x i8* ] }** %argv_slot1870
  %_lhs1873 = load { i32, [ 0 x i32 ] }** @a1868
  %ret1874 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1873 )
  call void @print_string( i8* %ret1874 )
  ret i32 0
}


define void @a1868.init (){

__fresh856:
  %array_ptr1856 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1857 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1856 to { i32, [ 0 x i32 ] }* 
  %index_ptr1858 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1858
  %index_ptr1859 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1859
  %index_ptr1860 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1860
  %index_ptr1861 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1861
  %index_ptr1862 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1862
  %index_ptr1863 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1863
  %index_ptr1864 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1864
  %index_ptr1865 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1865
  %index_ptr1866 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1866
  %index_ptr1867 = getelementptr { i32, [ 0 x i32 ] }* %array1857, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1867
  store { i32, [ 0 x i32 ] }* %array1857, { i32, [ 0 x i32 ] }** @a1868
  ret void
}


