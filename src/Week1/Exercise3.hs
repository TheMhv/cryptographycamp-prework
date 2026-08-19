-- Exercise 3: Use Fermat’s little theorem and fast modular exponentiation to come up with an alternative algorithm for computing the multiplicative inverse of an element in Z∗p.
-- Implement this algorithm in the language of your choice.

module Week1.Exercise3 where

import Week1.Exercise1

modExpo :: Integer -> Integer -> Integer -> Integer
modExpo a b m = expo a b `mod` m

modInverse :: Integer -> Integer -> Integer
modInverse a m = modExpo a (m-2) m
