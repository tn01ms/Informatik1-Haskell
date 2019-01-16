module Lager where

import Data

getID :: Lager -> Int
getID (id,_,_) = id

leeresLager :: Lager
leeresLager = []

einlagern :: Int -> String -> Int -> Lager -> Lager
einlagern id bez gew lag = [(id, bez, lag)] ++ lag

suche :: Int -> Lager -> (String, Int)
suche id lag = [elem|elem <- lag, (getID (head elem)) == id]