module Lager where

import Data

getID (id,_,_) = id
getBezGew [(_, bez, gew)] = (bez, gew)
getGew (_,_,gew) = gew

leeresLager :: Lager
leeresLager = []

einlagern :: Int -> String -> Int -> Lager -> Lager
einlagern id bez gew lag = [(id, bez, gew)] ++ lag

suche :: Int -> Lager -> (String, Int)
suche id lag = if length ([elem|elem <- lag, (getID elem) == id]) > 0 then getBezGew [elem|elem <- lag, (getID elem) == id] else ("nicht gefunden", -1)

sucheNachGewicht :: Int -> Int -> Lager -> Lager
sucheNachGewicht gew1 gew2 lag = [elem|elem <- lag, (getGew elem) >= gew1, (getGew elem) <= gew2]