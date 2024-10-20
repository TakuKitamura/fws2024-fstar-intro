module HelloFWS2024

open FStar.Mul
let even = x:int { x % 2 = 0 }
let odd = x:int { x % 2 = 1 }
// 偶数+偶数は、偶数である
let even_plus_even (x:even) (y:even): (z: even{z = x + y}) = x + y
// 奇数+奇数は、偶数である
let odd_plus_odd (x:odd) (y:odd): (z: even{z = x + y}) = x + y
// 偶数+奇数は、奇数である
let even_plus_odd (x:even) (y:odd): (z: odd{z = x + y}) = x + y
