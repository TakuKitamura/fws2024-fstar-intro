module HelloFWS2024

let pos = x:int { x > 0 } // 正の整数
let neg = x:int { x < 0 } // 負の整数
let even = x:int { x % 2 = 0 } // 偶数
let odd = x:int { x % 2 = 1 } // 奇数
let evenInRange = x:int { 100 <= x && x <= 200 && x % 2 = 0 } // 100以上200以下の偶数
let evenInRange2 = y: even { 100 <= y && y <= 200 } // 100以上200以下の偶数 (上と同等)

// 検証失敗
// let failed1: evenInRange2 = 2
// let failed2: evenInRange2 = 123
// 検証成功
// let success: evenInRange2 = 150
