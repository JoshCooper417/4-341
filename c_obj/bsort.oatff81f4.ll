declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2130.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2130 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2130.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh969:
  ret void
}


define i32 @program (i32 %argc2103, { i32, [ 0 x i8* ] }* %argv2101){

__fresh965:
  %argc_slot2104 = alloca i32
  store i32 %argc2103, i32* %argc_slot2104
  %argv_slot2102 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2101, { i32, [ 0 x i8* ] }** %argv_slot2102
  %array_ptr2105 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2106 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2105 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2108
  br label %__compare962

__fresh966:
  br label %__compare962

__compare962:
  %comparison_result2109 = icmp slt i32* %index_ptr2108, 8
  br i1 %comparison_result2109, label %__body963, label %__end964

__fresh967:
  br label %__body963

__body963:
  %i2110 = load i32* %index_ptr2108
  %index_ptr2108 = add i32* %index_ptr2108, 1
  br label %__compare962

__fresh968:
  br label %__end964

__end964:
  %a2111 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2106, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2113 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2113, i32 0 )
  %index_ptr2112 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 0
  store i32 121, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2115 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2115, i32 1 )
  %index_ptr2114 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 1
  store i32 125, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2117 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2117, i32 2 )
  %index_ptr2116 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 2
  store i32 120, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2119 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2119, i32 3 )
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 3
  store i32 111, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2121 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2121, i32 4 )
  %index_ptr2120 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 4
  store i32 116, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2123 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2123, i32 5 )
  %index_ptr2122 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 5
  store i32 110, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2125 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2125, i32 6 )
  %index_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 6
  store i32 117, { i32, [ 0 x i32 ] }** %a2111
  %size_ptr2127 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2127, i32 7 )
  %index_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %a2111, i32 0, i32 1, i32 7
  store i32 119, { i32, [ 0 x i32 ] }** %a2111
  %_lhs2128 = load { i32, [ 0 x i32 ] }** %a2111
  %ret2129 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2128 )
  call void @print_string( i8* %ret2129 )
  %strval2131 = load i8** @_oat_string2130
  call void @print_string( i8* %strval2131 )
  %_lhs2133 = load { i32, [ 0 x i32 ] }** %a2111
  %len_ptr2134 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2133, i32 0, i32 0
  %len2135 = load i32* %len_ptr2134
  %_lhs2132 = load { i32, [ 0 x i32 ] }** %a2111
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2132, i32 %len2135 )
  %_lhs2136 = load { i32, [ 0 x i32 ] }** %a2111
  %ret2137 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2136 )
  call void @print_string( i8* %ret2137 )
  %unop2138 = sub i32 0, 1
  ret i32 %unop2138
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2058, i32 %array_size2056){

__fresh955:
  %numbers_slot2059 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2058, { i32, [ 0 x i32 ] }** %numbers_slot2059
  %array_size_slot2057 = alloca i32
  store i32 %array_size2056, i32* %array_size_slot2057
  %temp2060 = alloca i32
  store i32 0, i32* %temp2060
  %_lhs2061 = load i32* %array_size_slot2057
  %bop2062 = sub i32 %_lhs2061, 1
  %i2063 = alloca i32
  store i32 %bop2062, i32* %i2063
  br label %__cond948

__cond948:
  %_lhs2064 = load i32* %i2063
  %bop2065 = icmp sgt i32 %_lhs2064, 0
  br i1 %bop2065, label %__body947, label %__post946

__fresh956:
  br label %__body947

__body947:
  %j2066 = alloca i32
  store i32 1, i32* %j2066
  br label %__cond951

__cond951:
  %_lhs2067 = load i32* %j2066
  %_lhs2068 = load i32* %i2063
  %bop2069 = icmp sle i32 %_lhs2067, %_lhs2068
  br i1 %bop2069, label %__body950, label %__post949

__fresh957:
  br label %__body950

__body950:
  %_lhs2070 = load i32* %j2066
  %bop2071 = sub i32 %_lhs2070, 1
  %size_ptr2073 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2073, i32 %bop2071 )
  %index_ptr2072 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 1, i32 %bop2071
  %_lhs2074 = load { i32, [ 0 x i32 ] }** %numbers_slot2059
  %_lhs2075 = load i32* %j2066
  %size_ptr2077 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2077, i32 %_lhs2075 )
  %index_ptr2076 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 1, i32 %_lhs2075
  %_lhs2078 = load { i32, [ 0 x i32 ] }** %numbers_slot2059
  %bop2079 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs2074, %_lhs2078
  br i1 %bop2079, label %__then954, label %__else953

__fresh958:
  br label %__then954

__then954:
  %_lhs2080 = load i32* %j2066
  %bop2081 = sub i32 %_lhs2080, 1
  %size_ptr2083 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2083, i32 %bop2081 )
  %index_ptr2082 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 1, i32 %bop2081
  %_lhs2084 = load { i32, [ 0 x i32 ] }** %numbers_slot2059
  store { i32, [ 0 x i32 ] }* %_lhs2084, i32* %temp2060
  %_lhs2085 = load i32* %j2066
  %bop2086 = sub i32 %_lhs2085, 1
  %size_ptr2088 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2088, i32 %bop2086 )
  %index_ptr2087 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 1, i32 %bop2086
  %_lhs2089 = load i32* %j2066
  %size_ptr2091 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2091, i32 %_lhs2089 )
  %index_ptr2090 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 1, i32 %_lhs2089
  %_lhs2092 = load { i32, [ 0 x i32 ] }** %numbers_slot2059
  store { i32, [ 0 x i32 ] }* %_lhs2092, { i32, [ 0 x i32 ] }** %numbers_slot2059
  %_lhs2093 = load i32* %j2066
  %size_ptr2095 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2095, i32 %_lhs2093 )
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2059, i32 0, i32 1, i32 %_lhs2093
  %_lhs2096 = load i32* %temp2060
  store i32 %_lhs2096, { i32, [ 0 x i32 ] }** %numbers_slot2059
  br label %__merge952

__fresh959:
  br label %__else953

__else953:
  br label %__merge952

__merge952:
  %_lhs2097 = load i32* %j2066
  %bop2098 = add i32 %_lhs2097, 1
  store i32 %bop2098, i32* %j2066
  br label %__cond951

__fresh960:
  br label %__post949

__post949:
  %_lhs2099 = load i32* %i2063
  %bop2100 = sub i32 %_lhs2099, 1
  store i32 %bop2100, i32* %i2063
  br label %__cond948

__fresh961:
  br label %__post946

__post946:
  ret void
}


