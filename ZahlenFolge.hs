module ZahlenFolge where
zahlenFolge :: [Int] -> [Int]
zahlenFolge [] = []
zahlenFolge (d:ds) = [x|x <- [1..], (length [y|y <- (d:ds), mod x y == 0]) > 0]