module Prefix where
prefix :: (Num a) => (a -> a -> a) -> a -> [a] -> [a]
prefix f a [] = [a]
prefix f a (x:xs) = (a: prefix f (f a x) xs)

-- prefix (+) 2 [2,3,4,5]
-- 		f = (+)
--		a = 2
-- 		(2:(3:[4,5]))
--	  = (x:(y:yx))

-- Soll: [2,4,7,11,16]
-- [a,a+x,a+y+x,...]