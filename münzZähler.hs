muenzen :: Int -> [Int]
muenzen 0 = []
muenzen x
        | x  >= 200 = 200:muenzen (x-200)
        | x >= 100 = 100:muenzen (x-100)
        | x >= 50 = 50:muenzen (x-50)
        | x >= 20 = 20:muenzen (x-20)
        | x >= 10 = 10:muenzen (x-10)
        | x >= 5 = 5:muenzen (x-5)
        | x >= 2 = 2:muenzen (x-2)
        | x >= 1 = 1:muenzen (x-1)
        | otherwise = error "Keine negativen Beträge erlaubt"