module Streckenzug where

-- TODO



-- zum Anzeigen eines Punktes
instance Show Punkt where
  show (Punkt x y) = "(" ++ show x ++ "," ++ show y ++ ")"
  
-- zum Anzeigen eines Streckenzugs
instance Show Streckenzug where
  show (Streckenzug x) = show x