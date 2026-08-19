-- Exercise 1: Implement the fast exponentiation algorithm in the language of your choice.
-- This will allow us to compute public keys, and will also be useful in future exercises.

module Week1.Exercise1 where

expo :: Integer -> Integer -> Integer
expo a b =
    if b == 0 then 1
    else
        let res = expo a (b `div` 2)
        in if b `mod` 2 == 1
            then res * res * a
            else res * res
