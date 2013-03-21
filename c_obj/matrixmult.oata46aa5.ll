declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string3305.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string3305 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3305.str., i32 0, i32 0), align 4
@_oat_string3301.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string3301 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string3301.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh975:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3283, i32 %n3281){

__fresh970:
  %ar_slot3284 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar3283, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot3284
  %n_slot3282 = alloca i32
  store i32 %n3281, i32* %n_slot3282
  %i3285 = alloca i32
  store i32 0, i32* %i3285
  br label %__cond966

__cond966:
  %_lhs3286 = load i32* %i3285
  %_lhs3287 = load i32* %n_slot3282
  %bop3288 = icmp slt i32 %_lhs3286, %_lhs3287
  br i1 %bop3288, label %__body965, label %__post964

__fresh971:
  br label %__body965

__body965:
  %j3289 = alloca i32
  store i32 0, i32* %j3289
  br label %__cond969

__cond969:
  %_lhs3290 = load i32* %j3289
  %bop3291 = icmp slt i32 %_lhs3290, 4
  br i1 %bop3291, label %__body968, label %__post967

__fresh972:
  br label %__body968

__body968:
  %_lhs3292 = load i32* %j3289
  %_lhs3293 = load i32* %i3285
  %size_entry_ptr3295 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3284, i32 0, i32 0
  %size3296 = load i32* %size_entry_ptr3295
  call void @oat_array_bounds_check( i32 %size3296, i32 %_lhs3293 )
  %index_ptr3294 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar_slot3284, i32 0, i32 1, i32 %_lhs3293
  %size_entry_ptr3298 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3294, i32 0, i32 0
  %size3299 = load i32* %size_entry_ptr3298
  call void @oat_array_bounds_check( i32 %size3299, i32 %_lhs3292 )
  %index_ptr3297 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3294, i32 0, i32 1, i32 %_lhs3292
  %_lhs3300 = load i32* %index_ptr3297
  call void @print_int( i32 %_lhs3300 )
  %strval3302 = load i8** @_oat_string3301
  call void @print_string( i8* %strval3302 )
  %_lhs3303 = load i32* %j3289
  %bop3304 = add i32 %_lhs3303, 1
  store i32 %bop3304, i32* %j3289
  br label %__cond969

__fresh973:
  br label %__post967

__post967:
  %strval3306 = load i8** @_oat_string3305
  call void @print_string( i8* %strval3306 )
  %_lhs3307 = load i32* %i3285
  %bop3308 = add i32 %_lhs3307, 1
  store i32 %bop3308, i32* %i3285
  br label %__cond966

__fresh974:
  br label %__post964

__post964:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13251, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23249, i32 %row3247, i32 %col3245){

__fresh961:
  %a1_slot3252 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13251, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3252
  %a2_slot3250 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23249, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3250
  %row_slot3248 = alloca i32
  store i32 %row3247, i32* %row_slot3248
  %col_slot3246 = alloca i32
  store i32 %col3245, i32* %col_slot3246
  %sum3253 = alloca i32
  store i32 0, i32* %sum3253
  %k3254 = alloca i32
  store i32 0, i32* %k3254
  br label %__cond960

__cond960:
  %_lhs3255 = load i32* %k3254
  %bop3256 = icmp slt i32 %_lhs3255, 3
  br i1 %bop3256, label %__body959, label %__post958

__fresh962:
  br label %__body959

__body959:
  %_lhs3257 = load i32* %sum3253
  %_lhs3258 = load i32* %k3254
  %_lhs3259 = load i32* %row_slot3248
  %size_entry_ptr3261 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3252, i32 0, i32 0
  %size3262 = load i32* %size_entry_ptr3261
  call void @oat_array_bounds_check( i32 %size3262, i32 %_lhs3259 )
  %index_ptr3260 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3252, i32 0, i32 1, i32 %_lhs3259
  %size_entry_ptr3264 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3260, i32 0, i32 0
  %size3265 = load i32* %size_entry_ptr3264
  call void @oat_array_bounds_check( i32 %size3265, i32 %_lhs3258 )
  %index_ptr3263 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3260, i32 0, i32 1, i32 %_lhs3258
  %_lhs3266 = load i32* %index_ptr3263
  %_lhs3267 = load i32* %col_slot3246
  %_lhs3268 = load i32* %k3254
  %size_entry_ptr3270 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3250, i32 0, i32 0
  %size3271 = load i32* %size_entry_ptr3270
  call void @oat_array_bounds_check( i32 %size3271, i32 %_lhs3268 )
  %index_ptr3269 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3250, i32 0, i32 1, i32 %_lhs3268
  %size_entry_ptr3273 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3269, i32 0, i32 0
  %size3274 = load i32* %size_entry_ptr3273
  call void @oat_array_bounds_check( i32 %size3274, i32 %_lhs3267 )
  %index_ptr3272 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3269, i32 0, i32 1, i32 %_lhs3267
  %_lhs3275 = load i32* %index_ptr3272
  %bop3276 = mul i32 %_lhs3266, %_lhs3275
  %bop3277 = add i32 %_lhs3257, %bop3276
  store i32 %bop3277, i32* %sum3253
  %_lhs3278 = load i32* %k3254
  %bop3279 = add i32 %_lhs3278, 1
  store i32 %bop3279, i32* %k3254
  br label %__cond960

__fresh963:
  br label %__post958

__post958:
  %_lhs3280 = load i32* %sum3253
  ret i32 %_lhs3280
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13220, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23218, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33216){

__fresh953:
  %a1_slot3221 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13220, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3221
  %a2_slot3219 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23218, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3219
  %a3_slot3217 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33216, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3217
  %i3222 = alloca i32
  store i32 0, i32* %i3222
  br label %__cond949

__cond949:
  %_lhs3223 = load i32* %i3222
  %bop3224 = icmp slt i32 %_lhs3223, 2
  br i1 %bop3224, label %__body948, label %__post947

__fresh954:
  br label %__body948

__body948:
  %j3225 = alloca i32
  store i32 0, i32* %j3225
  br label %__cond952

__cond952:
  %_lhs3226 = load i32* %j3225
  %bop3227 = icmp slt i32 %_lhs3226, 4
  br i1 %bop3227, label %__body951, label %__post950

__fresh955:
  br label %__body951

__body951:
  %_lhs3228 = load i32* %j3225
  %_lhs3229 = load i32* %i3222
  %size_entry_ptr3231 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3217, i32 0, i32 0
  %size3232 = load i32* %size_entry_ptr3231
  call void @oat_array_bounds_check( i32 %size3232, i32 %_lhs3229 )
  %index_ptr3230 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3217, i32 0, i32 1, i32 %_lhs3229
  %size_entry_ptr3234 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3230, i32 0, i32 0
  %size3235 = load i32* %size_entry_ptr3234
  call void @oat_array_bounds_check( i32 %size3235, i32 %_lhs3228 )
  %index_ptr3233 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3230, i32 0, i32 1, i32 %_lhs3228
  %_lhs3239 = load i32* %j3225
  %_lhs3238 = load i32* %i3222
  %_lhs3237 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3219
  %_lhs3236 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3221
  %ret3240 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3236, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3237, i32 %_lhs3238, i32 %_lhs3239 )
  store i32 %ret3240, i32* %index_ptr3233
  %_lhs3241 = load i32* %j3225
  %bop3242 = add i32 %_lhs3241, 1
  store i32 %bop3242, i32* %j3225
  br label %__cond952

__fresh956:
  br label %__post950

__post950:
  %_lhs3243 = load i32* %i3222
  %bop3244 = add i32 %_lhs3243, 1
  store i32 %bop3244, i32* %i3222
  br label %__cond949

__fresh957:
  br label %__post947

__post947:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13162, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23160, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33158){

__fresh940:
  %a1_slot3163 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a13162, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot3163
  %a2_slot3161 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a23160, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot3161
  %a3_slot3159 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a33158, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot3159
  %i3164 = alloca i32
  store i32 0, i32* %i3164
  br label %__cond933

__cond933:
  %_lhs3165 = load i32* %i3164
  %bop3166 = icmp slt i32 %_lhs3165, 2
  br i1 %bop3166, label %__body932, label %__post931

__fresh941:
  br label %__body932

__body932:
  %j3167 = alloca i32
  store i32 0, i32* %j3167
  br label %__cond936

__cond936:
  %_lhs3168 = load i32* %j3167
  %bop3169 = icmp slt i32 %_lhs3168, 4
  br i1 %bop3169, label %__body935, label %__post934

__fresh942:
  br label %__body935

__body935:
  %k3170 = alloca i32
  store i32 0, i32* %k3170
  br label %__cond939

__cond939:
  %_lhs3171 = load i32* %k3170
  %bop3172 = icmp slt i32 %_lhs3171, 3
  br i1 %bop3172, label %__body938, label %__post937

__fresh943:
  br label %__body938

__body938:
  %_lhs3173 = load i32* %j3167
  %_lhs3174 = load i32* %i3164
  %size_entry_ptr3176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3159, i32 0, i32 0
  %size3177 = load i32* %size_entry_ptr3176
  call void @oat_array_bounds_check( i32 %size3177, i32 %_lhs3174 )
  %index_ptr3175 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3159, i32 0, i32 1, i32 %_lhs3174
  %size_entry_ptr3179 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3175, i32 0, i32 0
  %size3180 = load i32* %size_entry_ptr3179
  call void @oat_array_bounds_check( i32 %size3180, i32 %_lhs3173 )
  %index_ptr3178 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3175, i32 0, i32 1, i32 %_lhs3173
  %_lhs3181 = load i32* %j3167
  %_lhs3182 = load i32* %i3164
  %size_entry_ptr3184 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3159, i32 0, i32 0
  %size3185 = load i32* %size_entry_ptr3184
  call void @oat_array_bounds_check( i32 %size3185, i32 %_lhs3182 )
  %index_ptr3183 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3_slot3159, i32 0, i32 1, i32 %_lhs3182
  %size_entry_ptr3187 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3183, i32 0, i32 0
  %size3188 = load i32* %size_entry_ptr3187
  call void @oat_array_bounds_check( i32 %size3188, i32 %_lhs3181 )
  %index_ptr3186 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3183, i32 0, i32 1, i32 %_lhs3181
  %_lhs3189 = load i32* %index_ptr3186
  %_lhs3190 = load i32* %k3170
  %_lhs3191 = load i32* %i3164
  %size_entry_ptr3193 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3163, i32 0, i32 0
  %size3194 = load i32* %size_entry_ptr3193
  call void @oat_array_bounds_check( i32 %size3194, i32 %_lhs3191 )
  %index_ptr3192 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a1_slot3163, i32 0, i32 1, i32 %_lhs3191
  %size_entry_ptr3196 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3192, i32 0, i32 0
  %size3197 = load i32* %size_entry_ptr3196
  call void @oat_array_bounds_check( i32 %size3197, i32 %_lhs3190 )
  %index_ptr3195 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3192, i32 0, i32 1, i32 %_lhs3190
  %_lhs3198 = load i32* %index_ptr3195
  %_lhs3199 = load i32* %j3167
  %_lhs3200 = load i32* %k3170
  %size_entry_ptr3202 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3161, i32 0, i32 0
  %size3203 = load i32* %size_entry_ptr3202
  call void @oat_array_bounds_check( i32 %size3203, i32 %_lhs3200 )
  %index_ptr3201 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a2_slot3161, i32 0, i32 1, i32 %_lhs3200
  %size_entry_ptr3205 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3201, i32 0, i32 0
  %size3206 = load i32* %size_entry_ptr3205
  call void @oat_array_bounds_check( i32 %size3206, i32 %_lhs3199 )
  %index_ptr3204 = getelementptr { i32, [ 0 x i32 ] }* %index_ptr3201, i32 0, i32 1, i32 %_lhs3199
  %_lhs3207 = load i32* %index_ptr3204
  %bop3208 = mul i32 %_lhs3198, %_lhs3207
  %bop3209 = add i32 %_lhs3189, %bop3208
  store i32 %bop3209, i32* %index_ptr3178
  %_lhs3210 = load i32* %k3170
  %bop3211 = add i32 %_lhs3210, 1
  store i32 %bop3211, i32* %k3170
  br label %__cond939

__fresh944:
  br label %__post937

__post937:
  %_lhs3212 = load i32* %j3167
  %bop3213 = add i32 %_lhs3212, 1
  store i32 %bop3213, i32* %j3167
  br label %__cond936

__fresh945:
  br label %__post934

__post934:
  %_lhs3214 = load i32* %i3164
  %bop3215 = add i32 %_lhs3214, 1
  store i32 %bop3215, i32* %i3164
  br label %__cond933

__fresh946:
  br label %__post931

__post931:
  ret void
}


define i32 @program (i32 %argc3092, { i32, [ 0 x i8* ] }* %argv3090){

__fresh930:
  %argc_slot3093 = alloca i32
  store i32 %argc3092, i32* %argc_slot3093
  %argv_slot3091 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv3090, { i32, [ 0 x i8* ] }** %argv_slot3091
  %array_ptr3094 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3095 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3094 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3096 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3097 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3096 to { i32, [ 0 x i32 ] }* 
  %index_ptr3098 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3098
  %index_ptr3099 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr3099
  %index_ptr3100 = getelementptr { i32, [ 0 x i32 ] }* %array3097, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr3100
  %index_ptr3101 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3095, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3097, { i32, [ 0 x i32 ] }** %index_ptr3101
  %array_ptr3102 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3103 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3102 to { i32, [ 0 x i32 ] }* 
  %index_ptr3104 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3104
  %index_ptr3105 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3105
  %index_ptr3106 = getelementptr { i32, [ 0 x i32 ] }* %array3103, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3106
  %index_ptr3107 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3095, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3103, { i32, [ 0 x i32 ] }** %index_ptr3107
  %a3108 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3095, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3108
  %array_ptr3109 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array3110 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3109 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3111 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3112 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3111 to { i32, [ 0 x i32 ] }* 
  %index_ptr3113 = getelementptr { i32, [ 0 x i32 ] }* %array3112, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr3113
  %index_ptr3114 = getelementptr { i32, [ 0 x i32 ] }* %array3112, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3114
  %index_ptr3115 = getelementptr { i32, [ 0 x i32 ] }* %array3112, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr3115
  %index_ptr3116 = getelementptr { i32, [ 0 x i32 ] }* %array3112, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr3116
  %index_ptr3117 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3110, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3112, { i32, [ 0 x i32 ] }** %index_ptr3117
  %array_ptr3118 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3119 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3118 to { i32, [ 0 x i32 ] }* 
  %index_ptr3120 = getelementptr { i32, [ 0 x i32 ] }* %array3119, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr3120
  %index_ptr3121 = getelementptr { i32, [ 0 x i32 ] }* %array3119, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3121
  %index_ptr3122 = getelementptr { i32, [ 0 x i32 ] }* %array3119, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr3122
  %index_ptr3123 = getelementptr { i32, [ 0 x i32 ] }* %array3119, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr3123
  %index_ptr3124 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3110, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3119, { i32, [ 0 x i32 ] }** %index_ptr3124
  %array_ptr3125 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3126 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3125 to { i32, [ 0 x i32 ] }* 
  %index_ptr3127 = getelementptr { i32, [ 0 x i32 ] }* %array3126, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr3127
  %index_ptr3128 = getelementptr { i32, [ 0 x i32 ] }* %array3126, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr3128
  %index_ptr3129 = getelementptr { i32, [ 0 x i32 ] }* %array3126, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr3129
  %index_ptr3130 = getelementptr { i32, [ 0 x i32 ] }* %array3126, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr3130
  %index_ptr3131 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3110, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array3126, { i32, [ 0 x i32 ] }** %index_ptr3131
  %b3132 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3110, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3132
  %array_ptr3133 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array3134 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3133 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr3135 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3136 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3135 to { i32, [ 0 x i32 ] }* 
  %index_ptr3137 = getelementptr { i32, [ 0 x i32 ] }* %array3136, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3137
  %index_ptr3138 = getelementptr { i32, [ 0 x i32 ] }* %array3136, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3138
  %index_ptr3139 = getelementptr { i32, [ 0 x i32 ] }* %array3136, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3139
  %index_ptr3140 = getelementptr { i32, [ 0 x i32 ] }* %array3136, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3140
  %index_ptr3141 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3134, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array3136, { i32, [ 0 x i32 ] }** %index_ptr3141
  %array_ptr3142 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array3143 = bitcast { i32, [ 0 x i32 ] }* %array_ptr3142 to { i32, [ 0 x i32 ] }* 
  %index_ptr3144 = getelementptr { i32, [ 0 x i32 ] }* %array3143, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr3144
  %index_ptr3145 = getelementptr { i32, [ 0 x i32 ] }* %array3143, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr3145
  %index_ptr3146 = getelementptr { i32, [ 0 x i32 ] }* %array3143, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr3146
  %index_ptr3147 = getelementptr { i32, [ 0 x i32 ] }* %array3143, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr3147
  %index_ptr3148 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3134, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array3143, { i32, [ 0 x i32 ] }** %index_ptr3148
  %c3149 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array3134, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3149
  %_lhs3152 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3149
  %_lhs3151 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3132
  %_lhs3150 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3108
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3150, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3151, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3152 )
  %_lhs3153 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3149
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3153, i32 2 )
  %_lhs3156 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3149
  %_lhs3155 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b3132
  %_lhs3154 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3108
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3154, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3155, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3156 )
  %_lhs3157 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c3149
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs3157, i32 2 )
  ret i32 0
}


