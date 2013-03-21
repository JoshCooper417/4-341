declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2227.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2227 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2227.str., i32 0, i32 0), align 4
@_oat_string2222.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2222 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2222.str., i32 0, i32 0), align 4
@_oat_string2218.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2218 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2218.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh701:
  ret void
}


define i32 @program (i32 %argc2204, { i32, [ 0 x i8* ] }* %argv2202){

__fresh700:
  %argc_slot2205 = alloca i32
  store i32 %argc2204, i32* %argc_slot2205
  %argv_slot2203 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2202, { i32, [ 0 x i8* ] }** %argv_slot2203
  %array_ptr2206 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2207 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2206 to { i32, [ 0 x i32 ] }* 
  %index_ptr2208 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr2208
  %index_ptr2209 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr2209
  %index_ptr2210 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr2210
  %index_ptr2211 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr2211
  %index_ptr2212 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr2212
  %index_ptr2213 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr2213
  %index_ptr2214 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr2214
  %index_ptr2215 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr2215
  %index_ptr2216 = getelementptr { i32, [ 0 x i32 ] }* %array2207, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr2216
  %a2217 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2207, { i32, [ 0 x i32 ] }** %a2217
  %strval2219 = load i8** @_oat_string2218
  call void @print_string( i8* %strval2219 )
  %_lhs2220 = load { i32, [ 0 x i32 ] }** %a2217
  %ret2221 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2220 )
  call void @print_string( i8* %ret2221 )
  %strval2223 = load i8** @_oat_string2222
  call void @print_string( i8* %strval2223 )
  %_lhs2224 = load { i32, [ 0 x i32 ] }** %a2217
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2224, i32 0, i32 8 )
  %_lhs2225 = load { i32, [ 0 x i32 ] }** %a2217
  %ret2226 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2225 )
  call void @print_string( i8* %ret2226 )
  %strval2228 = load i8** @_oat_string2227
  call void @print_string( i8* %strval2228 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a2115, i32 %l2113, i32 %r2111){

__fresh689:
  %a_slot2116 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2115, { i32, [ 0 x i32 ] }** %a_slot2116
  %l_slot2114 = alloca i32
  store i32 %l2113, i32* %l_slot2114
  %r_slot2112 = alloca i32
  store i32 %r2111, i32* %r_slot2112
  %_lhs2117 = load i32* %l_slot2114
  %size_entry_ptr2119 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2120 = load i32* %size_entry_ptr2119
  call void @oat_array_bounds_check( i32 %size2120, i32 %_lhs2117 )
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2117
  %_lhs2121 = load { i32, [ 0 x i32 ] }** %a_slot2116
  %pivot2122 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2121, i32* %pivot2122
  %_lhs2123 = load i32* %l_slot2114
  %i2124 = alloca i32
  store i32 %_lhs2123, i32* %i2124
  %_lhs2125 = load i32* %r_slot2112
  %bop2126 = add i32 %_lhs2125, 1
  %j2127 = alloca i32
  store i32 %bop2126, i32* %j2127
  %t2128 = alloca i32
  store i32 0, i32* %t2128
  %done2129 = alloca i32
  store i32 0, i32* %done2129
  br label %__cond676

__cond676:
  %_lhs2130 = load i32* %done2129
  %bop2131 = icmp eq i32 %_lhs2130, 0
  br i1 %bop2131, label %__body675, label %__post674

__fresh690:
  br label %__body675

__body675:
  %_lhs2132 = load i32* %i2124
  %bop2133 = add i32 %_lhs2132, 1
  store i32 %bop2133, i32* %i2124
  br label %__cond679

__cond679:
  %_lhs2134 = load i32* %i2124
  %size_entry_ptr2136 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2137 = load i32* %size_entry_ptr2136
  call void @oat_array_bounds_check( i32 %size2137, i32 %_lhs2134 )
  %index_ptr2135 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2134
  %_lhs2138 = load { i32, [ 0 x i32 ] }** %a_slot2116
  %_lhs2139 = load i32* %pivot2122
  %bop2140 = icmp sle { i32, [ 0 x i32 ] }* %_lhs2138, %_lhs2139
  %_lhs2141 = load i32* %i2124
  %_lhs2142 = load i32* %r_slot2112
  %bop2143 = icmp sle i32 %_lhs2141, %_lhs2142
  %bop2144 = and i1 %bop2140, %bop2143
  br i1 %bop2144, label %__body678, label %__post677

__fresh691:
  br label %__body678

__body678:
  %_lhs2145 = load i32* %i2124
  %bop2146 = add i32 %_lhs2145, 1
  store i32 %bop2146, i32* %i2124
  br label %__cond679

__fresh692:
  br label %__post677

__post677:
  %_lhs2147 = load i32* %j2127
  %bop2148 = sub i32 %_lhs2147, 1
  store i32 %bop2148, i32* %j2127
  br label %__cond682

__cond682:
  %_lhs2149 = load i32* %j2127
  %size_entry_ptr2151 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2152 = load i32* %size_entry_ptr2151
  call void @oat_array_bounds_check( i32 %size2152, i32 %_lhs2149 )
  %index_ptr2150 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2149
  %_lhs2153 = load { i32, [ 0 x i32 ] }** %a_slot2116
  %_lhs2154 = load i32* %pivot2122
  %bop2155 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs2153, %_lhs2154
  br i1 %bop2155, label %__body681, label %__post680

__fresh693:
  br label %__body681

__body681:
  %_lhs2156 = load i32* %j2127
  %bop2157 = sub i32 %_lhs2156, 1
  store i32 %bop2157, i32* %j2127
  br label %__cond682

__fresh694:
  br label %__post680

__post680:
  %_lhs2158 = load i32* %i2124
  %_lhs2159 = load i32* %j2127
  %bop2160 = icmp sge i32 %_lhs2158, %_lhs2159
  br i1 %bop2160, label %__then685, label %__else684

__fresh695:
  br label %__then685

__then685:
  store i32 1, i32* %done2129
  br label %__merge683

__fresh696:
  br label %__else684

__else684:
  br label %__merge683

__merge683:
  %_lhs2161 = load i32* %done2129
  %bop2162 = icmp eq i32 %_lhs2161, 0
  br i1 %bop2162, label %__then688, label %__else687

__fresh697:
  br label %__then688

__then688:
  %_lhs2163 = load i32* %i2124
  %size_entry_ptr2165 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2166 = load i32* %size_entry_ptr2165
  call void @oat_array_bounds_check( i32 %size2166, i32 %_lhs2163 )
  %index_ptr2164 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2163
  %_lhs2167 = load { i32, [ 0 x i32 ] }** %a_slot2116
  store { i32, [ 0 x i32 ] }* %_lhs2167, i32* %t2128
  %_lhs2168 = load i32* %i2124
  %size_entry_ptr2170 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2171 = load i32* %size_entry_ptr2170
  call void @oat_array_bounds_check( i32 %size2171, i32 %_lhs2168 )
  %index_ptr2169 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2168
  %_lhs2172 = load i32* %j2127
  %size_entry_ptr2174 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2175 = load i32* %size_entry_ptr2174
  call void @oat_array_bounds_check( i32 %size2175, i32 %_lhs2172 )
  %index_ptr2173 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2172
  %_lhs2176 = load { i32, [ 0 x i32 ] }** %a_slot2116
  store { i32, [ 0 x i32 ] }* %_lhs2176, { i32, [ 0 x i32 ] }** %a_slot2116
  %_lhs2177 = load i32* %j2127
  %size_entry_ptr2179 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2180 = load i32* %size_entry_ptr2179
  call void @oat_array_bounds_check( i32 %size2180, i32 %_lhs2177 )
  %index_ptr2178 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2177
  %_lhs2181 = load i32* %t2128
  store i32 %_lhs2181, { i32, [ 0 x i32 ] }** %a_slot2116
  br label %__merge686

__fresh698:
  br label %__else687

__else687:
  br label %__merge686

__merge686:
  br label %__cond676

__fresh699:
  br label %__post674

__post674:
  %_lhs2182 = load i32* %l_slot2114
  %size_entry_ptr2184 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2185 = load i32* %size_entry_ptr2184
  call void @oat_array_bounds_check( i32 %size2185, i32 %_lhs2182 )
  %index_ptr2183 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2182
  %_lhs2186 = load { i32, [ 0 x i32 ] }** %a_slot2116
  store { i32, [ 0 x i32 ] }* %_lhs2186, i32* %t2128
  %_lhs2187 = load i32* %l_slot2114
  %size_entry_ptr2189 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2190 = load i32* %size_entry_ptr2189
  call void @oat_array_bounds_check( i32 %size2190, i32 %_lhs2187 )
  %index_ptr2188 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2187
  %_lhs2191 = load i32* %j2127
  %size_entry_ptr2193 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2194 = load i32* %size_entry_ptr2193
  call void @oat_array_bounds_check( i32 %size2194, i32 %_lhs2191 )
  %index_ptr2192 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2191
  %_lhs2195 = load { i32, [ 0 x i32 ] }** %a_slot2116
  store { i32, [ 0 x i32 ] }* %_lhs2195, { i32, [ 0 x i32 ] }** %a_slot2116
  %_lhs2196 = load i32* %j2127
  %size_entry_ptr2198 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 0
  %size2199 = load i32* %size_entry_ptr2198
  call void @oat_array_bounds_check( i32 %size2199, i32 %_lhs2196 )
  %index_ptr2197 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2116, i32 0, i32 1, i32 %_lhs2196
  %_lhs2200 = load i32* %t2128
  store i32 %_lhs2200, { i32, [ 0 x i32 ] }** %a_slot2116
  %_lhs2201 = load i32* %j2127
  ret i32 %_lhs2201
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a2093, i32 %l2091, i32 %r2089){

__fresh671:
  %a_slot2094 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2093, { i32, [ 0 x i32 ] }** %a_slot2094
  %l_slot2092 = alloca i32
  store i32 %l2091, i32* %l_slot2092
  %r_slot2090 = alloca i32
  store i32 %r2089, i32* %r_slot2090
  %j2095 = alloca i32
  store i32 0, i32* %j2095
  %_lhs2096 = load i32* %l_slot2092
  %_lhs2097 = load i32* %r_slot2090
  %bop2098 = icmp slt i32 %_lhs2096, %_lhs2097
  br i1 %bop2098, label %__then670, label %__else669

__fresh672:
  br label %__then670

__then670:
  %_lhs2101 = load i32* %r_slot2090
  %_lhs2100 = load i32* %l_slot2092
  %_lhs2099 = load { i32, [ 0 x i32 ] }** %a_slot2094
  %ret2102 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs2099, i32 %_lhs2100, i32 %_lhs2101 )
  store i32 %ret2102, i32* %j2095
  %_lhs2105 = load i32* %j2095
  %bop2106 = sub i32 %_lhs2105, 1
  %_lhs2104 = load i32* %l_slot2092
  %_lhs2103 = load { i32, [ 0 x i32 ] }** %a_slot2094
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2103, i32 %_lhs2104, i32 %bop2106 )
  %_lhs2110 = load i32* %r_slot2090
  %_lhs2108 = load i32* %j2095
  %bop2109 = add i32 %_lhs2108, 1
  %_lhs2107 = load { i32, [ 0 x i32 ] }** %a_slot2094
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs2107, i32 %bop2109, i32 %_lhs2110 )
  br label %__merge668

__fresh673:
  br label %__else669

__else669:
  br label %__merge668

__merge668:
  ret void
}


