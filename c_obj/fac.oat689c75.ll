declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh886:
  ret void
}


define i32 @program (i32 %argc1921, { i32, [ 0 x i8* ] }* %argv1919){

__fresh885:
  %argc_slot1922 = alloca i32
  store i32 %argc1921, i32* %argc_slot1922
  %argv_slot1920 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1919, { i32, [ 0 x i8* ] }** %argv_slot1920
  %ret1923 = call i32 @f ( i32 5 )
  ret i32 %ret1923
}


define i32 @f (i32 %i1908){

__fresh882:
  %i_slot1909 = alloca i32
  store i32 %i1908, i32* %i_slot1909
  %r1910 = alloca i32
  store i32 0, i32* %r1910
  %_lhs1911 = load i32* %i_slot1909
  %bop1912 = icmp eq i32 %_lhs1911, 0
  br i1 %bop1912, label %__then881, label %__else880

__fresh883:
  br label %__then881

__then881:
  store i32 1, i32* %r1910
  br label %__merge879

__fresh884:
  br label %__else880

__else880:
  %_lhs1913 = load i32* %i_slot1909
  %_lhs1914 = load i32* %i_slot1909
  %bop1915 = sub i32 %_lhs1914, 1
  %ret1916 = call i32 @f ( i32 %bop1915 )
  %bop1917 = mul i32 %_lhs1913, %ret1916
  store i32 %bop1917, i32* %r1910
  br label %__merge879

__merge879:
  %_lhs1918 = load i32* %r1910
  ret i32 %_lhs1918
}


