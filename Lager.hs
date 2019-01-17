module Lager where

import Data

getID (id,_,_) = id

leeresLager :: Lager
leeresLager = []

einlagern :: Int -> String -> Int -> Lager -> Lager
einlagern id bez gew lag = [(id, bez, gew)] ++ lag

suche :: Int -> Lager -> Int
suche id lag = getID lag
--suche id lag = [elem|elem <- lag, (getID (head elem)) == id]