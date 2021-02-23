module Perfeito where
	divisores :: Int -> [Int]
	divisores numero = [x | x <- [1..(numero - 1)], mod numero x == 0]

	somaLista :: [Int] -> Int
	somaLista [] = 0
	somaLista (x:xs) = x + somaLista xs

	perfeito :: Int -> Bool
	perfeito numero = if somaLista (divisores numero) == numero then True else False