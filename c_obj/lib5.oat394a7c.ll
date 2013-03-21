declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1862.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1862 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1862.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh584:
  ret void
}


define i32 @program (i32 %argc1860, { i32, [ 0 x i8* ] }* %argv1858){

__fresh581:
  %argc_slot1861 = alloca i32
  store i32 %argc1860, i32* %argc_slot1861
  %argv_slot1859 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1858, { i32, [ 0 x i8* ] }** %argv_slot1859
  %strval1863 = load i8** @_oat_string1862
  %str1864 = alloca i8*
  store i8* %strval1863, i8** %str1864
  %_lhs1865 = load i8** %str1864
  %ret1866 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1865 )
  %arr1867 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1866, { i32, [ 0 x i32 ] }** %arr1867
  %s1868 = alloca i32
  store i32 0, i32* %s1868
  %i1869 = alloca i32
  store i32 0, i32* %i1869
  br label %__cond580

__cond580:
  %_lhs1870 = load i32* %i1869
  %bop1871 = icmp slt i32 %_lhs1870, 5
  br i1 %bop1871, label %__body579, label %__post578

__fresh582:
  br label %__body579

__body579:
  %_lhs1872 = load i32* %s1868
  %_lhs1873 = load i32* %i1869
  %size_entry_ptr1875 = getelementptr { i32, [ 0 x i32 ] }* %arr1867, i32 0, i32 0
  %size1876 = load i32* %size_entry_ptr1875
  call void @oat_array_bounds_check( i32 %size1876, i32 %_lhs1873 )
  %index_ptr1874 = getelementptr { i32, [ 0 x i32 ] }* %arr1867, i32 0, i32 1, i32 %_lhs1873
  %_lhs1877 = load i32* %index_ptr1874
  %bop1878 = add i32 %_lhs1872, %_lhs1877
  store i32 %bop1878, i32* %s1868
  %_lhs1879 = load i32* %i1869
  %bop1880 = add i32 %_lhs1879, 1
  store i32 %bop1880, i32* %i1869
  br label %__cond580

__fresh583:
  br label %__post578

__post578:
  %_lhs1881 = load i32* %s1868
  ret i32 %_lhs1881
}


