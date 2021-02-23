module Substituir where
	substituir :: Int -> Int -> [Int] -> [Int]
	substituir x y [] = []
	substituir x y (z:zs)
		|(z == x) = (y: substituir x y zs)
		|otherwise = (z: substituir x y zs)