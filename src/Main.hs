module Main (main) where

import Week1.Exercise1
import Week1.Exercise3

main :: IO ()
main = do
    putStrLn (show (expo 5 3))
    putStrLn (show (modInverse 3 7))
