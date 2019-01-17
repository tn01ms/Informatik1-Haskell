zaehle :: [Int] -> Int -> Int

zaehle list x = length [i|i <- list, i == x]