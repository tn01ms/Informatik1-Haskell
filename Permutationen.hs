perm :: [Int] -> [[Int]]
perm [] = [[]]
perm (x:[]) = [[x]]
perm (x:xs) = []