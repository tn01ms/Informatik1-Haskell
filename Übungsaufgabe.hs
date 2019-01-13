module Übungsaufgabe where

appendLists :: [a] -> [a] -> [a]
appendLists [] [] = []
appendLists [] (y:ys) = (y: appendLists ys [])
appendLists (x:xs) [] = (x: appendLists xs [])
appendLists (x:xs) (y:ys) = (x: appendLists xs (y:ys))


verbinde [] ys = ys
verbinde (x:xs) ys = x : verbinde xs ys)



verbinde [1,2,3] [4,5]
1 : verbinde [2,3] [4,5]
1 : 2 : verbinde [3] [4,5]
1 : 2 : 3 : verbinde [] [4,5]
1 : 2 : 3 : [4,5]
1 : 2 : [3,4,5]
1 : [2,3,4,5]
[1,2,3,4,5]