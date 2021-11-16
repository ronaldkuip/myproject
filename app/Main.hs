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
      toEnum   n  = Card (toEnum ( n `div` 13 ) ) ( toEnum ( n `mod` 13 ) )
      fromEnum c  = fromEnum (suit c) * 13 + fromEnum (rank c)

type Deck = [Card]

deck::Deck
deck = [Card suit rank | suit <- [Club .. Spade], rank <- [Two .. Ace] ]

north = [ Card Club Ace  , Card Club King , Card Club Six  , Card Club Three ]
east  = [ Card Club Nine , Card Club Two ]
south = [ Card Club Jack , Card Club Ten  , Card Club Eight, Card Club Five ]
west  = [ Card Club Queen, Card Club Seven, Card Club Four ]

matrix = [ south, west, north, east ]

tricks = [ [ n,e,s,w ] | n <-  north, e <- east, s <- south, w <- west ]
{- 
>>> head $ tail $ tail tricks
[Card {suit = Club, rank = Ace},Card {suit = Club, rank = Nine},Card {suit = Club, rank = Jack},Card {suit = Club, rank = Four}]
-}

jj :: [Card] -> Card

-- testing github
jj x = if (!!) x 0 == Card Club Four then Card Club Two else Card Club Three

