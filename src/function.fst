module HelloFWS2024

let add (x:int) (y:int) : int = x + y // 整数 + 整数
let add2 (x:int{x > 0}) (y: int{y > 0}) : (z: int{z = x + y}) = x + y // 自然数 + 自然数

let is_in_range_100_200 (y:int): bool = 100 <= y && y <= 200
let even = x:int { x % 2 = 0 } // 偶数
let evenInRange3 = y: even { is_in_range_100_200 y } // 100以上200以下の偶数
