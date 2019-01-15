module Prefix where
prefix :: (Num a) => (a -> a -> a) -> a -> [a] -> [a]
prefix f a [] = [a]
prefix f a (x:xs) = (a: prefix f (f a x) xs)