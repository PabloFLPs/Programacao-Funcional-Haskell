module Intercalar where
	menor :: Int -> Int -> Int
	menor x y = if x < y then x else y

	maior :: Int -> Int -> Int
	maior x y = if x > y then x else y

	ordena :: [Int] -> [Int]
	ordena [] = []
	ordena lista@(x:xs) = ordena menor ++ meio ++ ordena maior
		where
			menor = [y | y<-xs, y<x]
			meio = [y | y<-lista, y==x]
			maior = [y | y<-xs, y>x]

	intercalar :: [Int] -> [Int] -> [Int]
	intercalar [] lista = lista
	intercalar lista [] = lista
	intercalar (x:xs) (y:ys) = ordena([menor x y] ++ [maior x y] ++ intercalar xs ys)