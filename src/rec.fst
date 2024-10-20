module HelloFWS2024

open FStar.Mul
let rec factorial (n: int{n >= 0})
  : (ret: int{ret > 0}) = 
      if n = 0 then 1 // 0! = 1
      else n * factorial (n - 1)
