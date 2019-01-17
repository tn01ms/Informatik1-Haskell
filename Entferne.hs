entferne :: [Int] -> Int -> [Int]
entferne [] x = []
entferne list x = [i|i <- list, i /= x]