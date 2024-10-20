module HelloFWS2024

open FStar.Mul
let rec factorial (n: int{n >= 0})
  : (ret: int{ret > 0}) = 
      if n = 0 then 1 // 0! = 1
      else n * factorial (n - 1)
      
let rec factorial_is_greater_than_arg (n:int{n > 2})
  : Lemma (factorial n > n)
  = if n = 3 then ()
    else factorial_is_greater_than_arg (n - 1)
