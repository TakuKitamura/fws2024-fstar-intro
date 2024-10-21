module HelloFWS2024

let add (x:int) (y:int) : int = x + y // 整数 + 整数
let add2 (x:int{x > 0}) (y: int{y > 0}) : (z: int{z = x + y}) = x + y // 自然数 + 自然数
val add3 : x:int{x > 0} -> y:int{y > 0} -> z:int{z = x + y}
let add3 x y = x + y // add2と意味は同等で、val(宣言), let(実装)で分けて書いた形

let is_in_range_100_200 (y:int): bool = 100 <= y && y <= 200
let even = x:int { x % 2 = 0 } // 偶数
let evenInRange3 = y: even { is_in_range_100_200 y } // 100以上200以下の偶数
