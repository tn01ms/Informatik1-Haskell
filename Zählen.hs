zaehle :: [Int] -> Int -> Int

zaehle list x = length [i|i <- list, i == x]

zaehle2 :: [Int] -> Int -> Int -> Int
zaehle2 [] y z = z
zaehle2 (x:xs) y z
        | x == y = zaehle2 xs y z++
        | otherwise = zaehle2 xs y z