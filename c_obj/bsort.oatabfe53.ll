declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2320.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2320 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2320.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh733:
  ret void
}


define i32 @program (i32 %argc2285, { i32, [ 0 x i8* ] }* %argv2283){

__fresh729:
  %argc_slot2286 = alloca i32
  store i32 %argc2285, i32* %argc_slot2286
  %argv_slot2284 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2283, { i32, [ 0 x i8* ] }** %argv_slot2284
  %array_ptr2287 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2288 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2287 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2290
  br label %__compare726

__fresh730:
  br label %__compare726

__compare726:
  %comparison_result2291 = icmp slt i32* %index_ptr2290, 8
  br i1 %comparison_result2291, label %__body727, label %__end728

__fresh731:
  br label %__body727

__body727:
  %i2292 = load i32* %index_ptr2290
  %index_ptr2290 = add i32* %index_ptr2290, 1
  br label %__compare726

__fresh732:
  br label %__end728

__end728:
  %a2293 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2288, { i32, [ 0 x i32 ] }** %a2293
  %size_entry_ptr2295 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2296 = load i32* %size_entry_ptr2295
  call void @oat_array_bounds_check( i32 %size2296, i32 0 )
  %index_ptr2294 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 0
  store i32 121, i32* %index_ptr2294
  %size_entry_ptr2298 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2299 = load i32* %size_entry_ptr2298
  call void @oat_array_bounds_check( i32 %size2299, i32 1 )
  %index_ptr2297 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2297
  %size_entry_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2302 = load i32* %size_entry_ptr2301
  call void @oat_array_bounds_check( i32 %size2302, i32 2 )
  %index_ptr2300 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 2
  store i32 120, i32* %index_ptr2300
  %size_entry_ptr2304 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2305 = load i32* %size_entry_ptr2304
  call void @oat_array_bounds_check( i32 %size2305, i32 3 )
  %index_ptr2303 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 3
  store i32 111, i32* %index_ptr2303
  %size_entry_ptr2307 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2308 = load i32* %size_entry_ptr2307
  call void @oat_array_bounds_check( i32 %size2308, i32 4 )
  %index_ptr2306 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 4
  store i32 116, i32* %index_ptr2306
  %size_entry_ptr2310 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2311 = load i32* %size_entry_ptr2310
  call void @oat_array_bounds_check( i32 %size2311, i32 5 )
  %index_ptr2309 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 5
  store i32 110, i32* %index_ptr2309
  %size_entry_ptr2313 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2314 = load i32* %size_entry_ptr2313
  call void @oat_array_bounds_check( i32 %size2314, i32 6 )
  %index_ptr2312 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 6
  store i32 117, i32* %index_ptr2312
  %size_entry_ptr2316 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 0
  %size2317 = load i32* %size_entry_ptr2316
  call void @oat_array_bounds_check( i32 %size2317, i32 7 )
  %index_ptr2315 = getelementptr { i32, [ 0 x i32 ] }* %a2293, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2315
  %_lhs2318 = load { i32, [ 0 x i32 ] }** %a2293
  %ret2319 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2318 )
  call void @print_string( i8* %ret2319 )
  %strval2321 = load i8** @_oat_string2320
  call void @print_string( i8* %strval2321 )
  %_lhs2323 = load { i32, [ 0 x i32 ] }** %a2293
  %len_ptr2324 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2323, i32 0, i32 0
  %len2325 = load i32* %len_ptr2324
  %_lhs2322 = load { i32, [ 0 x i32 ] }** %a2293
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2322, i32 %len2325 )
  %_lhs2326 = load { i32, [ 0 x i32 ] }** %a2293
  %ret2327 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2326 )
  call void @print_string( i8* %ret2327 )
  %unop2328 = sub i32 0, 1
  ret i32 %unop2328
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2234, i32 %array_size2232){

__fresh719:
  %numbers_slot2235 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2234, { i32, [ 0 x i32 ] }** %numbers_slot2235
  %array_size_slot2233 = alloca i32
  store i32 %array_size2232, i32* %array_size_slot2233
  %temp2236 = alloca i32
  store i32 0, i32* %temp2236
  %_lhs2237 = load i32* %array_size_slot2233
  %bop2238 = sub i32 %_lhs2237, 1
  %i2239 = alloca i32
  store i32 %bop2238, i32* %i2239
  br label %__cond712

__cond712:
  %_lhs2240 = load i32* %i2239
  %bop2241 = icmp sgt i32 %_lhs2240, 0
  br i1 %bop2241, label %__body711, label %__post710

__fresh720:
  br label %__body711

__body711:
  %j2242 = alloca i32
  store i32 1, i32* %j2242
  br label %__cond715

__cond715:
  %_lhs2243 = load i32* %j2242
  %_lhs2244 = load i32* %i2239
  %bop2245 = icmp sle i32 %_lhs2243, %_lhs2244
  br i1 %bop2245, label %__body714, label %__post713

__fresh721:
  br label %__body714

__body714:
  %_lhs2246 = load i32* %j2242
  %bop2247 = sub i32 %_lhs2246, 1
  %size_entry_ptr2249 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 0
  %size2250 = load i32* %size_entry_ptr2249
  call void @oat_array_bounds_check( i32 %size2250, i32 %bop2247 )
  %index_ptr2248 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 1, i32 %bop2247
  %_lhs2251 = load i32* %index_ptr2248
  %_lhs2252 = load i32* %j2242
  %size_entry_ptr2254 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 0
  %size2255 = load i32* %size_entry_ptr2254
  call void @oat_array_bounds_check( i32 %size2255, i32 %_lhs2252 )
  %index_ptr2253 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 1, i32 %_lhs2252
  %_lhs2256 = load i32* %index_ptr2253
  %bop2257 = icmp sgt i32 %_lhs2251, %_lhs2256
  br i1 %bop2257, label %__then718, label %__else717

__fresh722:
  br label %__then718

__then718:
  %_lhs2258 = load i32* %j2242
  %bop2259 = sub i32 %_lhs2258, 1
  %size_entry_ptr2261 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 0
  %size2262 = load i32* %size_entry_ptr2261
  call void @oat_array_bounds_check( i32 %size2262, i32 %bop2259 )
  %index_ptr2260 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 1, i32 %bop2259
  %_lhs2263 = load i32* %index_ptr2260
  store i32 %_lhs2263, i32* %temp2236
  %_lhs2264 = load i32* %j2242
  %bop2265 = sub i32 %_lhs2264, 1
  %size_entry_ptr2267 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 0
  %size2268 = load i32* %size_entry_ptr2267
  call void @oat_array_bounds_check( i32 %size2268, i32 %bop2265 )
  %index_ptr2266 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 1, i32 %bop2265
  %_lhs2269 = load i32* %j2242
  %size_entry_ptr2271 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 0
  %size2272 = load i32* %size_entry_ptr2271
  call void @oat_array_bounds_check( i32 %size2272, i32 %_lhs2269 )
  %index_ptr2270 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 1, i32 %_lhs2269
  %_lhs2273 = load i32* %index_ptr2270
  store i32 %_lhs2273, i32* %index_ptr2266
  %_lhs2274 = load i32* %j2242
  %size_entry_ptr2276 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 0
  %size2277 = load i32* %size_entry_ptr2276
  call void @oat_array_bounds_check( i32 %size2277, i32 %_lhs2274 )
  %index_ptr2275 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2235, i32 0, i32 1, i32 %_lhs2274
  %_lhs2278 = load i32* %temp2236
  store i32 %_lhs2278, i32* %index_ptr2275
  br label %__merge716

__fresh723:
  br label %__else717

__else717:
  br label %__merge716

__merge716:
  %_lhs2279 = load i32* %j2242
  %bop2280 = add i32 %_lhs2279, 1
  store i32 %bop2280, i32* %j2242
  br label %__cond715

__fresh724:
  br label %__post713

__post713:
  %_lhs2281 = load i32* %i2239
  %bop2282 = sub i32 %_lhs2281, 1
  store i32 %bop2282, i32* %i2239
  br label %__cond712

__fresh725:
  br label %__post710

__post710:
  ret void
}


