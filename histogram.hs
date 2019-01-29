hist :: [Int] -> [Int]

hist [] = [0,0,0,0,0]
hist xs = [y|y <- xs] [z|z <- [1..5], y == 1]]