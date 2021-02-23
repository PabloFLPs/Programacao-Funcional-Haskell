module SomaImpares where
	somaImpares :: [Int] -> Int
	somaImpares [] = 0
	somaImpares (x:xs)
		|(x `mod` 2 == 1) = x + somaImpares xs
		|otherwise = 0 + somaImpares xs