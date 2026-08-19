-- Exercise 4: Implement ElGamal for Z∗p in the language of your choice.

module Week1.Exercise4 where

import Week1.Exercise3

data Group = Group {
    g :: Integer,
    p :: Integer
}

publicKey :: Group -> Integer -> Integer
publicKey z a = modExpo (g z) a (p z) -- A = g^a (mod p)

encryption :: Group -> Integer -> Integer -> Integer -> (Integer, Integer)
encryption z m k pubk =
    let c1 = modExpo (g z) k (p z) -- c1 = g^k (mod p)
    in let c2 = m * modExpo pubk k (p z) `mod` (p z) -- c2 = m * A^k (mod p)
    in (c1, c2)

decryption :: Group -> (Integer, Integer) -> Integer -> Integer
decryption z (c1, c2) a =
    let x = modExpo c1 a (p z) -- x = c1^a (mod p)
    in let xInv = modInverse x (p z) -- x^-1
    in c2 * xInv `mod` (p z) -- m = c2 * x^-1 (mod p)
