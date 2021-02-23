module Trocar where
	melhorNota :: Int -> Int
	melhorNota valor
		|valor >= 100 = 100
		|valor >= 50 = 50
		|valor >= 10 = 10
		|valor >= 5 = 5
		|otherwise = 1

	trocar :: Int -> [Int]
	trocar 0 = []
	trocar valor = trocar (valor - melhorNota valor) ++ [melhorNota valor]