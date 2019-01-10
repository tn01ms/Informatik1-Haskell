module Verzahnen where
verzahnen [] [] = []
verzahnen (x:[]) (y:[]) = (x:(y:[]))
verzahnen [] (y:ys) = (y:verzahnen [] ys)
verzahnen (x:xs) [] = (x:verzahnen [] xs)
verzahnen (x:xs) (y:ys) = (x:(y:verzahnen xs ys))