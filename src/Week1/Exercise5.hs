-- Exercise 5: Describe how ElGamal can be implemented using an arbitrary abelian group. Don’t forget to mention how public keys are computed.
-- Explain why using Zp with the operation of addition as your abelian group is insecure

module Week1.Exercise5 where

import Week1.Exercise4

setGroup :: Integer -> Integer -> Group
setGroup g p = Group g p

alicePrivKey :: Integer
alicePrivKey = 153

bobMessage :: Integer
bobMessage = 331

bobNonce :: Integer
bobNonce = 197

elGamal :: Integer -> Integer -> IO ()
elGamal g p = do
    let group = Group g p
    let alicePubKey = publicKey group alicePrivKey
    let cyphertext = encryption group bobMessage bobNonce alicePubKey
    let message = decryption group cyphertext alicePrivKey

    putStrLn ("Group generator: " ++ show g)
    putStrLn ("Group prime field: " ++ show p)
    putStrLn ("Alice Private Key: " ++ show alicePrivKey)
    putStrLn ("Alice Public Key: " ++ show alicePubKey)
    putStrLn ("Bob's Message: " ++ show bobMessage)
    putStrLn ("Bob's Nonce: " ++ show bobNonce)
    putStrLn ("Cyphertext: " ++ show cyphertext)
    putStrLn ("Recovered Message: " ++ show message)
