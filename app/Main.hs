module Piet where

x :: IO()
x = putStrLn "33"
{- 

>>> triple
[3,4]
>>> main
>>> dtriple
[2,3,4]

-}

-- jammer dat de haskell language server het niet doet op de mac

triple :: [Int] 
triple = [3,4]

dtriple :: [Int] 
dtriple = [2, 3,4]

main :: IO()
main = putStrLn "Dag wereld op zolder"
