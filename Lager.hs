module Lager where
import Data

--type Lager = Int -> (String, Int)


--einlagern :: Int -> String -> Int -> Lager -> Lager
--einlagern id bez gew lag = lag + (Lager id -> (bez, gew))

test :: Lager -> Lager
test l = l