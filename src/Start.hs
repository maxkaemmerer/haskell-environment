module Start (doubleMe, main) where

main :: IO ()
main = do
  print (doubleMe 2)

doubleMe :: Int -> Int
doubleMe x = x * 2
 
halfMe x = x / 2

tripleMe :: Int -> Int
tripleMe x = x * 3

doubleUs :: Int -> Int -> Int
doubleUs x y = (x + y) * 2

doubleSmall :: Int -> Int
doubleSmall x = if x < 100
    then x * 2
    else x

doStuffTwice x y = x (x y)

doStuffThrice x y = x (doStuffTwice x y)

takeEvenTripledUpTo :: Int -> [Int]
takeEvenTripledUpTo y = [tripleMe x | x <- [1..y], even x]

boomBangs :: Int -> [[Char]]
boomBangs y = [if odd x then "Bang" else "Boom" | x <- [0..y], x > 10]

filterNestedEven :: [[Int]] -> [[Int]]
filterNestedEven y = [[x| x <- xs, even x] | xs <- y] 

triples :: [(Int, Int, Int)]
triples = [(a, b, c)| a <- [1..10], b <- [1..10], c <- [1..10]]

rightAnglesTriangles :: [(Int, Int, Int)]
rightAnglesTriangles = 
  [(a,b,c) | a <- [1..10], b <- [1..10], c <- [1..10], 
  a^2 + b^2 == c^2, a+b+c == 24]


shortToLong :: Char -> String
shortToLong 'h' = "Haskell"
shortToLong 'p' = "PHP"
shortToLong _ = "No Longform available"
