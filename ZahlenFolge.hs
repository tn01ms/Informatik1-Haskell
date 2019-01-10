module ZahlenFolge where
zahlenFolge d = [x|x <- [1..], mod x d == 0]