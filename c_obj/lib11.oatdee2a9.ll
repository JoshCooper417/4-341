declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1829.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1829 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1829.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh852:
  ret void
}


define i32 @program (i32 %argc1827, { i32, [ 0 x i8* ] }* %argv1825){

__fresh847:
  %argc_slot1828 = alloca i32
  store i32 %argc1827, i32* %argc_slot1828
  %argv_slot1826 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1825, { i32, [ 0 x i8* ] }** %argv_slot1826
  %strval1830 = load i8** @_oat_string1829
  %ret1831 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1830 )
  %arr1832 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1831, { i32, [ 0 x i32 ] }** %arr1832
  %sum1833 = alloca i32
  store i32 0, i32* %sum1833
  %i1834 = alloca i32
  store i32 0, i32* %i1834
  br label %__cond843

__cond843:
  %_lhs1835 = load i32* %i1834
  %bop1836 = icmp slt i32 %_lhs1835, 10
  br i1 %bop1836, label %__body842, label %__post841

__fresh848:
  br label %__body842

__body842:
  %_lhs1837 = load i32* %i1834
  %size_ptr1839 = getelementptr { i32, [ 0 x i32 ] }* %arr1832, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1839, i32 %_lhs1837 )
  %index_ptr1838 = getelementptr { i32, [ 0 x i32 ] }* %arr1832, i32 0, i32 1, i32 %_lhs1837
  %_lhs1840 = load i32* %i1834
  store i32 %_lhs1840, { i32, [ 0 x i32 ] }** %arr1832
  %_lhs1841 = load i32* %i1834
  %bop1842 = add i32 %_lhs1841, 1
  store i32 %bop1842, i32* %i1834
  br label %__cond843

__fresh849:
  br label %__post841

__post841:
  %i1843 = alloca i32
  store i32 0, i32* %i1843
  br label %__cond846

__cond846:
  %_lhs1844 = load i32* %i1843
  %bop1845 = icmp slt i32 %_lhs1844, 10
  br i1 %bop1845, label %__body845, label %__post844

__fresh850:
  br label %__body845

__body845:
  %_lhs1846 = load i32* %sum1833
  %_lhs1847 = load i32* %i1843
  %size_ptr1849 = getelementptr { i32, [ 0 x i32 ] }* %arr1832, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1849, i32 %_lhs1847 )
  %index_ptr1848 = getelementptr { i32, [ 0 x i32 ] }* %arr1832, i32 0, i32 1, i32 %_lhs1847
  %_lhs1850 = load { i32, [ 0 x i32 ] }** %arr1832
  %bop1851 = add i32 %_lhs1846, %_lhs1850
  store i32 %bop1851, i32* %sum1833
  %_lhs1852 = load i32* %i1843
  %bop1853 = add i32 %_lhs1852, 1
  store i32 %bop1853, i32* %i1843
  br label %__cond846

__fresh851:
  br label %__post844

__post844:
  %_lhs1854 = load i32* %sum1833
  ret i32 %_lhs1854
}


