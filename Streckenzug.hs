module Streckenzug where
import Punkt

type Streckenzug = [Punkt]

instance Eq Punkt where
     (a,b) == (c,d) = true


--   (==) :: Double -> Double -> Bool
--   (==) a b = if (fst a) == (fst b) then true else false
   
vergleiche :: a -> a -> Bool
vergleiche a b = a == b

-- TODO

distanz :: Punkt -> Punkt -> Float
distanz a b = sqrt (((fst a - fst b)^2) + ((snd a - snd b)^2))

laenge :: Streckenzug -> Float
laenge [] = 0.0
laenge [(_,_)] = 0.0
laenge (x:(y:ys)) = (distanz x y) + (laenge ([y]++ys))


-- zum Anzeigen eines Punktes
--instance Show Punkt where
--  show (Punkt x y) = "(" ++ show x ++ "," ++ show y ++ ")"
  
-- zum Anzeigen eines Streckenzugs
--instance Show Streckenzug where
--  show (Streckenzug x) = show x