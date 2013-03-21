declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2165.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2165 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2165.str., i32 0, i32 0), align 4
@_oat_string2161.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2161 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2161.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh1030:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2201, i32 %low2199, i32 %high2197, i32 %mid2195){

__fresh1016:
  %a_slot2202 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2201, { i32, [ 0 x i32 ] }** %a_slot2202
  %low_slot2200 = alloca i32
  store i32 %low2199, i32* %low_slot2200
  %high_slot2198 = alloca i32
  store i32 %high2197, i32* %high_slot2198
  %mid_slot2196 = alloca i32
  store i32 %mid2195, i32* %mid_slot2196
  %i2203 = alloca i32
  store i32 0, i32* %i2203
  %j2204 = alloca i32
  store i32 0, i32* %j2204
  %k2205 = alloca i32
  store i32 0, i32* %k2205
  %array_ptr2206 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2207 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2206 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2209
  br label %__compare998

__fresh1017:
  br label %__compare998

__compare998:
  %comparison_result2210 = icmp slt i32* %index_ptr2209, 50
  br i1 %comparison_result2210, label %__body999, label %__end1000

__fresh1018:
  br label %__body999

__body999:
  %i2211 = load i32* %index_ptr2209
  %index_ptr2209 = add i32* %index_ptr2209, 1
  br label %__compare998

__fresh1019:
  br label %__end1000

__end1000:
  %c2212 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2207, { i32, [ 0 x i32 ] }** %c2212
  %_lhs2213 = load i32* %low_slot2200
  store i32 %_lhs2213, i32* %i2203
  %_lhs2214 = load i32* %mid_slot2196
  %bop2215 = add i32 %_lhs2214, 1
  store i32 %bop2215, i32* %j2204
  %_lhs2216 = load i32* %low_slot2200
  store i32 %_lhs2216, i32* %k2205
  br label %__cond1003

__cond1003:
  %_lhs2217 = load i32* %i2203
  %_lhs2218 = load i32* %mid_slot2196
  %bop2219 = icmp sle i32 %_lhs2217, %_lhs2218
  %_lhs2220 = load i32* %j2204
  %_lhs2221 = load i32* %high_slot2198
  %bop2222 = icmp sle i32 %_lhs2220, %_lhs2221
  %bop2223 = and i1 %bop2219, %bop2222
  br i1 %bop2223, label %__body1002, label %__post1001

__fresh1020:
  br label %__body1002

__body1002:
  %_lhs2224 = load i32* %i2203
  %size_ptr2226 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2226, i32 %_lhs2224 )
  %index_ptr2225 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2224
  %_lhs2227 = load { i32, [ 0 x i32 ] }** %a_slot2202
  %_lhs2228 = load i32* %j2204
  %size_ptr2230 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2230, i32 %_lhs2228 )
  %index_ptr2229 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2228
  %_lhs2231 = load { i32, [ 0 x i32 ] }** %a_slot2202
  %bop2232 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2227, %_lhs2231
  br i1 %bop2232, label %__then1006, label %__else1005

__fresh1021:
  br label %__then1006

__then1006:
  %_lhs2233 = load i32* %k2205
  %size_ptr2235 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2235, i32 %_lhs2233 )
  %index_ptr2234 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 1, i32 %_lhs2233
  %_lhs2236 = load i32* %i2203
  %size_ptr2238 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2238, i32 %_lhs2236 )
  %index_ptr2237 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2236
  %_lhs2239 = load { i32, [ 0 x i32 ] }** %a_slot2202
  store { i32, [ 0 x i32 ] }* %_lhs2239, { i32, [ 0 x i32 ] }** %c2212
  %_lhs2240 = load i32* %k2205
  %bop2241 = add i32 %_lhs2240, 1
  store i32 %bop2241, i32* %k2205
  %_lhs2242 = load i32* %i2203
  %bop2243 = add i32 %_lhs2242, 1
  store i32 %bop2243, i32* %i2203
  br label %__merge1004

__fresh1022:
  br label %__else1005

__else1005:
  %_lhs2244 = load i32* %k2205
  %size_ptr2246 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2246, i32 %_lhs2244 )
  %index_ptr2245 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 1, i32 %_lhs2244
  %_lhs2247 = load i32* %j2204
  %size_ptr2249 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2249, i32 %_lhs2247 )
  %index_ptr2248 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2247
  %_lhs2250 = load { i32, [ 0 x i32 ] }** %a_slot2202
  store { i32, [ 0 x i32 ] }* %_lhs2250, { i32, [ 0 x i32 ] }** %c2212
  %_lhs2251 = load i32* %k2205
  %bop2252 = add i32 %_lhs2251, 1
  store i32 %bop2252, i32* %k2205
  %_lhs2253 = load i32* %j2204
  %bop2254 = add i32 %_lhs2253, 1
  store i32 %bop2254, i32* %j2204
  br label %__merge1004

__merge1004:
  br label %__cond1003

__fresh1023:
  br label %__post1001

__post1001:
  br label %__cond1009

__cond1009:
  %_lhs2255 = load i32* %i2203
  %_lhs2256 = load i32* %mid_slot2196
  %bop2257 = icmp sle i32 %_lhs2255, %_lhs2256
  br i1 %bop2257, label %__body1008, label %__post1007

__fresh1024:
  br label %__body1008

__body1008:
  %_lhs2258 = load i32* %k2205
  %size_ptr2260 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2260, i32 %_lhs2258 )
  %index_ptr2259 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 1, i32 %_lhs2258
  %_lhs2261 = load i32* %i2203
  %size_ptr2263 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2263, i32 %_lhs2261 )
  %index_ptr2262 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2261
  %_lhs2264 = load { i32, [ 0 x i32 ] }** %a_slot2202
  store { i32, [ 0 x i32 ] }* %_lhs2264, { i32, [ 0 x i32 ] }** %c2212
  %_lhs2265 = load i32* %k2205
  %bop2266 = add i32 %_lhs2265, 1
  store i32 %bop2266, i32* %k2205
  %_lhs2267 = load i32* %i2203
  %bop2268 = add i32 %_lhs2267, 1
  store i32 %bop2268, i32* %i2203
  br label %__cond1009

__fresh1025:
  br label %__post1007

__post1007:
  br label %__cond1012

__cond1012:
  %_lhs2269 = load i32* %j2204
  %_lhs2270 = load i32* %high_slot2198
  %bop2271 = icmp sle i32 %_lhs2269, %_lhs2270
  br i1 %bop2271, label %__body1011, label %__post1010

__fresh1026:
  br label %__body1011

__body1011:
  %_lhs2272 = load i32* %k2205
  %size_ptr2274 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2274, i32 %_lhs2272 )
  %index_ptr2273 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 1, i32 %_lhs2272
  %_lhs2275 = load i32* %j2204
  %size_ptr2277 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2277, i32 %_lhs2275 )
  %index_ptr2276 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2275
  %_lhs2278 = load { i32, [ 0 x i32 ] }** %a_slot2202
  store { i32, [ 0 x i32 ] }* %_lhs2278, { i32, [ 0 x i32 ] }** %c2212
  %_lhs2279 = load i32* %k2205
  %bop2280 = add i32 %_lhs2279, 1
  store i32 %bop2280, i32* %k2205
  %_lhs2281 = load i32* %j2204
  %bop2282 = add i32 %_lhs2281, 1
  store i32 %bop2282, i32* %j2204
  br label %__cond1012

__fresh1027:
  br label %__post1010

__post1010:
  %_lhs2283 = load i32* %low_slot2200
  store i32 %_lhs2283, i32* %i2203
  br label %__cond1015

__cond1015:
  %_lhs2284 = load i32* %i2203
  %_lhs2285 = load i32* %k2205
  %bop2286 = icmp slt i32 %_lhs2284, %_lhs2285
  br i1 %bop2286, label %__body1014, label %__post1013

__fresh1028:
  br label %__body1014

__body1014:
  %_lhs2287 = load i32* %i2203
  %size_ptr2289 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2289, i32 %_lhs2287 )
  %index_ptr2288 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2202, i32 0, i32 1, i32 %_lhs2287
  %_lhs2290 = load i32* %i2203
  %size_ptr2292 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2292, i32 %_lhs2290 )
  %index_ptr2291 = getelementptr { i32, [ 0 x i32 ] }* %c2212, i32 0, i32 1, i32 %_lhs2290
  %_lhs2293 = load { i32, [ 0 x i32 ] }** %c2212
  store { i32, [ 0 x i32 ] }* %_lhs2293, { i32, [ 0 x i32 ] }** %a_slot2202
  %_lhs2294 = load i32* %i2203
  %bop2295 = add i32 %_lhs2294, 1
  store i32 %bop2295, i32* %i2203
  br label %__cond1015

__fresh1029:
  br label %__post1013

__post1013:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2174, i32 %low2172, i32 %high2170){

__fresh995:
  %a_slot2175 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2174, { i32, [ 0 x i32 ] }** %a_slot2175
  %low_slot2173 = alloca i32
  store i32 %low2172, i32* %low_slot2173
  %high_slot2171 = alloca i32
  store i32 %high2170, i32* %high_slot2171
  %mid2176 = alloca i32
  store i32 0, i32* %mid2176
  %_lhs2177 = load i32* %low_slot2173
  %_lhs2178 = load i32* %high_slot2171
  %bop2179 = icmp slt i32 %_lhs2177, %_lhs2178
  br i1 %bop2179, label %__then994, label %__else993

__fresh996:
  br label %__then994

__then994:
  %_lhs2180 = load i32* %low_slot2173
  %_lhs2181 = load i32* %high_slot2171
  %bop2182 = add i32 %_lhs2180, %_lhs2181
  %bop2183 = ashr i32 %bop2182, 1
  store i32 %bop2183, i32* %mid2176
  %_lhs2186 = load i32* %mid2176
  %_lhs2185 = load i32* %low_slot2173
  %_lhs2184 = load { i32, [ 0 x i32 ] }** %a_slot2175
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2184, i32 %_lhs2185, i32 %_lhs2186 )
  %_lhs2190 = load i32* %high_slot2171
  %_lhs2188 = load i32* %mid2176
  %bop2189 = add i32 %_lhs2188, 1
  %_lhs2187 = load { i32, [ 0 x i32 ] }** %a_slot2175
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2187, i32 %bop2189, i32 %_lhs2190 )
  %_lhs2194 = load i32* %mid2176
  %_lhs2193 = load i32* %high_slot2171
  %_lhs2192 = load i32* %low_slot2173
  %_lhs2191 = load { i32, [ 0 x i32 ] }** %a_slot2175
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2191, i32 %_lhs2192, i32 %_lhs2193, i32 %_lhs2194 )
  br label %__merge992

__fresh997:
  br label %__else993

__else993:
  br label %__merge992

__merge992:
  ret void
}


define i32 @program (i32 %argc2142, { i32, [ 0 x i8* ] }* %argv2140){

__fresh991:
  %argc_slot2143 = alloca i32
  store i32 %argc2142, i32* %argc_slot2143
  %argv_slot2141 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2140, { i32, [ 0 x i8* ] }** %argv_slot2141
  %i2144 = alloca i32
  store i32 0, i32* %i2144
  %array_ptr2145 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2146 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2145 to { i32, [ 0 x i32 ] }* 
  %index_ptr2147 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2147
  %index_ptr2148 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2148
  %index_ptr2149 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2149
  %index_ptr2150 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2150
  %index_ptr2151 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2151
  %index_ptr2152 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2152
  %index_ptr2153 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2153
  %index_ptr2154 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2154
  %index_ptr2155 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2155
  %index_ptr2156 = getelementptr { i32, [ 0 x i32 ] }* %array2146, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2156
  %a2157 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2146, { i32, [ 0 x i32 ] }** %a2157
  %_lhs2158 = load { i32, [ 0 x i32 ] }** %a2157
  %ret2159 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2158 )
  call void @print_string( i8* %ret2159 )
  %_lhs2160 = load { i32, [ 0 x i32 ] }** %a2157
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2160, i32 0, i32 9 )
  %strval2162 = load i8** @_oat_string2161
  call void @print_string( i8* %strval2162 )
  %_lhs2163 = load { i32, [ 0 x i32 ] }** %a2157
  %ret2164 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2163 )
  call void @print_string( i8* %ret2164 )
  %strval2166 = load i8** @_oat_string2165
  call void @print_string( i8* %strval2166 )
  %_lhs2167 = load i32* %i2144
  ret i32 %_lhs2167
}


