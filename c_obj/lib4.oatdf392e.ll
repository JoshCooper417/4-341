declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1835 = global i8* zeroinitializer, align 4		; initialized by str1835.init
@_oat_string1833.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1833 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1833.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh574:
  call void @str1835.init(  )
  ret void
}


define i32 @program (i32 %argc1839, { i32, [ 0 x i8* ] }* %argv1837){

__fresh571:
  %argc_slot1840 = alloca i32
  store i32 %argc1839, i32* %argc_slot1840
  %argv_slot1838 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1837, { i32, [ 0 x i8* ] }** %argv_slot1838
  %_lhs1841 = load i8** @str1835
  %ret1842 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1841 )
  %arr1843 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1842, { i32, [ 0 x i32 ] }** %arr1843
  %s1844 = alloca i32
  store i32 0, i32* %s1844
  %i1845 = alloca i32
  store i32 0, i32* %i1845
  br label %__cond570

__cond570:
  %_lhs1846 = load i32* %i1845
  %bop1847 = icmp slt i32 %_lhs1846, 5
  br i1 %bop1847, label %__body569, label %__post568

__fresh572:
  br label %__body569

__body569:
  %_lhs1848 = load i32* %s1844
  %_lhs1849 = load i32* %i1845
  %size_entry_ptr1851 = getelementptr { i32, [ 0 x i32 ] }* %arr1843, i32 0, i32 0
  %size1852 = load i32* %size_entry_ptr1851
  call void @oat_array_bounds_check( i32 %size1852, i32 %_lhs1849 )
  %index_ptr1850 = getelementptr { i32, [ 0 x i32 ] }* %arr1843, i32 0, i32 1, i32 %_lhs1849
  %_lhs1853 = load i32* %index_ptr1850
  %bop1854 = add i32 %_lhs1848, %_lhs1853
  store i32 %bop1854, i32* %s1844
  %_lhs1855 = load i32* %i1845
  %bop1856 = add i32 %_lhs1855, 1
  store i32 %bop1856, i32* %i1845
  br label %__cond570

__fresh573:
  br label %__post568

__post568:
  %_lhs1857 = load i32* %s1844
  ret i32 %_lhs1857
}


define void @str1835.init (){

__fresh567:
  %strval1834 = load i8** @_oat_string1833
  store i8* %strval1834, i8** @str1835
  ret void
}


