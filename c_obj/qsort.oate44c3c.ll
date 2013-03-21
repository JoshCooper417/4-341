declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2051.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2051 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2051.str., i32 0, i32 0), align 4
@_oat_string2046.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2046 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2046.str., i32 0, i32 0), align 4
@_oat_string2042.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2042 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2042.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh922:
  ret void
}


define i32 @program (i32 %argc2028, { i32, [ 0 x i8* ] }* %argv2026){

__fresh921:
  %argc_slot2029 = alloca i32
  store i32 %argc2028, i32* %argc_slot2029
  %argv_slot2027 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2026, { i32, [ 0 x i8* ] }** %argv_slot2027
  %array_ptr2030 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2031 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2030 to { i32, [ 0 x i32 ] }* 
  %index_ptr2032 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2032
  %index_ptr2033 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2033
  %index_ptr2034 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2034
  %index_ptr2035 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2035
  %index_ptr2036 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2036
  %index_ptr2037 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2037
  %index_ptr2038 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2038
  %index_ptr2039 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2039
  %index_ptr2040 = getelementptr { i32, [ 0 x i32 ] }* %array2031, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2040
  %a2041 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2031, { i32, [ 0 x i32 ] }** %a2041
  %strval2043 = load i8** @_oat_string2042
  call void @print_string( i8* %strval2043 )
  %_lhs2044 = load { i32, [ 0 x i32 ] }** %a2041
  %ret2045 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2044 )
  call void @print_string( i8* %ret2045 )
  %strval2047 = load i8** @_oat_string2046
  call void @print_string( i8* %strval2047 )
  %_lhs2048 = load { i32, [ 0 x i32 ] }** %a2041
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2048, i32 0, i32 8 )
  %_lhs2049 = load { i32, [ 0 x i32 ] }** %a2041
  %ret2050 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2049 )
  call void @print_string( i8* %ret2050 )
  %strval2052 = load i8** @_oat_string2051
  call void @print_string( i8* %strval2052 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1950, i32 %l1948, i32 %r1946){

__fresh910:
  %a_slot1951 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1950, { i32, [ 0 x i32 ] }** %a_slot1951
  %l_slot1949 = alloca i32
  store i32 %l1948, i32* %l_slot1949
  %r_slot1947 = alloca i32
  store i32 %r1946, i32* %r_slot1947
  %_lhs1952 = load i32* %l_slot1949
  %size_ptr1954 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1954, i32 %_lhs1952 )
  %index_ptr1953 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs1952
  %_lhs1955 = load { i32, [ 0 x i32 ] }** %a_slot1951
  %pivot1956 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1955, i32* %pivot1956
  %_lhs1957 = load i32* %l_slot1949
  %i1958 = alloca i32
  store i32 %_lhs1957, i32* %i1958
  %_lhs1959 = load i32* %r_slot1947
  %bop1960 = add i32 %_lhs1959, 1
  %j1961 = alloca i32
  store i32 %bop1960, i32* %j1961
  %t1962 = alloca i32
  store i32 0, i32* %t1962
  %done1963 = alloca i32
  store i32 0, i32* %done1963
  br label %__cond897

__cond897:
  %_lhs1964 = load i32* %done1963
  %bop1965 = icmp eq i32 %_lhs1964, 0
  br i1 %bop1965, label %__body896, label %__post895

__fresh911:
  br label %__body896

__body896:
  %_lhs1966 = load i32* %i1958
  %bop1967 = add i32 %_lhs1966, 1
  store i32 %bop1967, i32* %i1958
  br label %__cond900

__cond900:
  %_lhs1968 = load i32* %i1958
  %size_ptr1970 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1970, i32 %_lhs1968 )
  %index_ptr1969 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs1968
  %_lhs1971 = load { i32, [ 0 x i32 ] }** %a_slot1951
  %_lhs1972 = load i32* %pivot1956
  %bop1973 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1971, %_lhs1972
  %_lhs1974 = load i32* %i1958
  %_lhs1975 = load i32* %r_slot1947
  %bop1976 = icmp sle i32 %_lhs1974, %_lhs1975
  %bop1977 = and i1 %bop1973, %bop1976
  br i1 %bop1977, label %__body899, label %__post898

__fresh912:
  br label %__body899

__body899:
  %_lhs1978 = load i32* %i1958
  %bop1979 = add i32 %_lhs1978, 1
  store i32 %bop1979, i32* %i1958
  br label %__cond900

__fresh913:
  br label %__post898

__post898:
  %_lhs1980 = load i32* %j1961
  %bop1981 = sub i32 %_lhs1980, 1
  store i32 %bop1981, i32* %j1961
  br label %__cond903

__cond903:
  %_lhs1982 = load i32* %j1961
  %size_ptr1984 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1984, i32 %_lhs1982 )
  %index_ptr1983 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs1982
  %_lhs1985 = load { i32, [ 0 x i32 ] }** %a_slot1951
  %_lhs1986 = load i32* %pivot1956
  %bop1987 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1985, %_lhs1986
  br i1 %bop1987, label %__body902, label %__post901

__fresh914:
  br label %__body902

__body902:
  %_lhs1988 = load i32* %j1961
  %bop1989 = sub i32 %_lhs1988, 1
  store i32 %bop1989, i32* %j1961
  br label %__cond903

__fresh915:
  br label %__post901

__post901:
  %_lhs1990 = load i32* %i1958
  %_lhs1991 = load i32* %j1961
  %bop1992 = icmp sge i32 %_lhs1990, %_lhs1991
  br i1 %bop1992, label %__then906, label %__else905

__fresh916:
  br label %__then906

__then906:
  store i32 1, i32* %done1963
  br label %__merge904

__fresh917:
  br label %__else905

__else905:
  br label %__merge904

__merge904:
  %_lhs1993 = load i32* %done1963
  %bop1994 = icmp eq i32 %_lhs1993, 0
  br i1 %bop1994, label %__then909, label %__else908

__fresh918:
  br label %__then909

__then909:
  %_lhs1995 = load i32* %i1958
  %size_ptr1997 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1997, i32 %_lhs1995 )
  %index_ptr1996 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs1995
  %_lhs1998 = load { i32, [ 0 x i32 ] }** %a_slot1951
  store { i32, [ 0 x i32 ] }* %_lhs1998, i32* %t1962
  %_lhs1999 = load i32* %i1958
  %size_ptr2001 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2001, i32 %_lhs1999 )
  %index_ptr2000 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs1999
  %_lhs2002 = load i32* %j1961
  %size_ptr2004 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2004, i32 %_lhs2002 )
  %index_ptr2003 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs2002
  %_lhs2005 = load { i32, [ 0 x i32 ] }** %a_slot1951
  store { i32, [ 0 x i32 ] }* %_lhs2005, { i32, [ 0 x i32 ] }** %a_slot1951
  %_lhs2006 = load i32* %j1961
  %size_ptr2008 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2008, i32 %_lhs2006 )
  %index_ptr2007 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs2006
  %_lhs2009 = load i32* %t1962
  store i32 %_lhs2009, { i32, [ 0 x i32 ] }** %a_slot1951
  br label %__merge907

__fresh919:
  br label %__else908

__else908:
  br label %__merge907

__merge907:
  br label %__cond897

__fresh920:
  br label %__post895

__post895:
  %_lhs2010 = load i32* %l_slot1949
  %size_ptr2012 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2012, i32 %_lhs2010 )
  %index_ptr2011 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs2010
  %_lhs2013 = load { i32, [ 0 x i32 ] }** %a_slot1951
  store { i32, [ 0 x i32 ] }* %_lhs2013, i32* %t1962
  %_lhs2014 = load i32* %l_slot1949
  %size_ptr2016 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2016, i32 %_lhs2014 )
  %index_ptr2015 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs2014
  %_lhs2017 = load i32* %j1961
  %size_ptr2019 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2019, i32 %_lhs2017 )
  %index_ptr2018 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs2017
  %_lhs2020 = load { i32, [ 0 x i32 ] }** %a_slot1951
  store { i32, [ 0 x i32 ] }* %_lhs2020, { i32, [ 0 x i32 ] }** %a_slot1951
  %_lhs2021 = load i32* %j1961
  %size_ptr2023 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2023, i32 %_lhs2021 )
  %index_ptr2022 = getelementptr { i32, [ 0 x i32 ] }* %a_slot1951, i32 0, i32 1, i32 %_lhs2021
  %_lhs2024 = load i32* %t1962
  store i32 %_lhs2024, { i32, [ 0 x i32 ] }** %a_slot1951
  %_lhs2025 = load i32* %j1961
  ret i32 %_lhs2025
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1928, i32 %l1926, i32 %r1924){

__fresh892:
  %a_slot1929 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1928, { i32, [ 0 x i32 ] }** %a_slot1929
  %l_slot1927 = alloca i32
  store i32 %l1926, i32* %l_slot1927
  %r_slot1925 = alloca i32
  store i32 %r1924, i32* %r_slot1925
  %j1930 = alloca i32
  store i32 0, i32* %j1930
  %_lhs1931 = load i32* %l_slot1927
  %_lhs1932 = load i32* %r_slot1925
  %bop1933 = icmp slt i32 %_lhs1931, %_lhs1932
  br i1 %bop1933, label %__then891, label %__else890

__fresh893:
  br label %__then891

__then891:
  %_lhs1936 = load i32* %r_slot1925
  %_lhs1935 = load i32* %l_slot1927
  %_lhs1934 = load { i32, [ 0 x i32 ] }** %a_slot1929
  %ret1937 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1934, i32 %_lhs1935, i32 %_lhs1936 )
  store i32 %ret1937, i32* %j1930
  %_lhs1940 = load i32* %j1930
  %bop1941 = sub i32 %_lhs1940, 1
  %_lhs1939 = load i32* %l_slot1927
  %_lhs1938 = load { i32, [ 0 x i32 ] }** %a_slot1929
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1938, i32 %_lhs1939, i32 %bop1941 )
  %_lhs1945 = load i32* %r_slot1925
  %_lhs1943 = load i32* %j1930
  %bop1944 = add i32 %_lhs1943, 1
  %_lhs1942 = load { i32, [ 0 x i32 ] }** %a_slot1929
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1942, i32 %bop1944, i32 %_lhs1945 )
  br label %__merge889

__fresh894:
  br label %__else890

__else890:
  br label %__merge889

__merge889:
  ret void
}


