module HelloFWS2024
open FStar.Mul

// n が 0 以上であれば、2 * n も 0 以上であるか
let lemma_double_nonneg (n:int) :
    Lemma (requires n >= 0) (ensures 2 * n >= 0) = ()

// lemma_double_nonneg と同等
val lemma_double_nonneg2 : n:int -> 
    Lemma (requires n >= 0) (ensures 2 * n >= 0)
let lemma_double_nonneg2 n = ()
