findIndices :: (a -> Bool) -> [a] -> [Int]

findIndices b [] = []
findIndices b (x:xs) = helpIndices 1 b (x:xs)




helpIndices i b (x:[]) = if b x then i : [] else []
helpIndices i b (x:xs) = if b x then i : (helpIndices (i+1) b xs) else (helpIndices (i+1) b xs)