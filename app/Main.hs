module Piet where

main :: IO()
main = putStrLn "Dag wereld op zolder"

data Suit = Club | Diamond | Heart | Spade
     deriving (Read, Show, Enum, Eq, Ord)

data Rank = Two | Three | Four
     | Five | Six | Seven | Eight | Nine | Ten 
     | Jack | Queen | King | Ace
    deriving (Read,  Show, Enum, Eq, Ord)

data Card = Card { suit  :: Suit,
                   rank  :: Rank }            
    deriving (Read, Show, Eq)

instance Ord Card where
      compare c1 c2 = compare (rank c1, suit c1) (rank c2, suit c2)
 
instance Enum Card where
      -- toEnum   n  = let (suit,rank) = n `divMod` 13 in Card (toEnum suit) (toEnum rank)
      toEnum   n  = Card (toEnum ( n `div` 13 ) ) ( toEnum ( n `mod` 13 ) )
      fromEnum c  = fromEnum (suit c) * 13 + fromEnum (rank c)

type Deck = [Card]

deck::Deck
deck = [Card suit rank | suit <- [Club .. Spade], rank <- [Two .. Ace] ]
