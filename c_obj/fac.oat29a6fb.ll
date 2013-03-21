declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh665:
  ret void
}


define i32 @program (i32 %argc2086, { i32, [ 0 x i8* ] }* %argv2084){

__fresh664:
  %argc_slot2087 = alloca i32
  store i32 %argc2086, i32* %argc_slot2087
  %argv_slot2085 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2084, { i32, [ 0 x i8* ] }** %argv_slot2085
  %ret2088 = call i32 @f ( i32 5 )
  ret i32 %ret2088
}


define i32 @f (i32 %i2073){

__fresh661:
  %i_slot2074 = alloca i32
  store i32 %i2073, i32* %i_slot2074
  %r2075 = alloca i32
  store i32 0, i32* %r2075
  %_lhs2076 = load i32* %i_slot2074
  %bop2077 = icmp eq i32 %_lhs2076, 0
  br i1 %bop2077, label %__then660, label %__else659

__fresh662:
  br label %__then660

__then660:
  store i32 1, i32* %r2075
  br label %__merge658

__fresh663:
  br label %__else659

__else659:
  %_lhs2078 = load i32* %i_slot2074
  %_lhs2079 = load i32* %i_slot2074
  %bop2080 = sub i32 %_lhs2079, 1
  %ret2081 = call i32 @f ( i32 %bop2080 )
  %bop2082 = mul i32 %_lhs2078, %ret2081
  store i32 %bop2082, i32* %r2075
  br label %__merge658

__merge658:
  %_lhs2083 = load i32* %r2075
  ret i32 %_lhs2083
}


