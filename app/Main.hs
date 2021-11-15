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

-- Nu oveg ik beneden iets toe. Ik verwacht dat mijn client daarvan op de hoogte wordt gesteld.
triple :: [Int] 
triple = [3,4]

dtriple :: [Int] 
dtriple = [2, 3,4]

-- opnieuw ietes toeveogen


main :: IO()
main = putStrLn "Dag wereld op zolder"
