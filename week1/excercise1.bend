# Implement the fast exponentiation algorithm in the language of your choice.
# This will allow us to compute public keys, and will also be useful in future exercises.

from ../Bits import *
from ../Bool import *


Bits.expo: Bits -> Bits -> Bits
Bits.expo x (Bits/o(Bits/e)) = (Bits.from_decimal 1)
Bits.expo x y =
    let res = Bits.expo x (Bits.shr y)
    if (Bits.eq res (Bits.from_decimal 0)) = Bool/True {
        res * res * x
    } else {
        res * res
    }



main =
    let x = (Bits.from_decimal 3)
    let y = (Bits.from_decimal 5)
    let z = (Bits.expo x y)
    (Bits.to_decimal(z))
