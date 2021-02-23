module Palindromo where
	listaInversa :: [Int] -> [Int] --recebemos uma lista de "int" e retornamos uma lista de "int"
	listaInversa [] = []
	listaInversa (x:xs) = listaInversa xs ++ [x] --recursividade para a inversao da ordem da lista

	palindromo :: [Int] -> Bool --recebmos uma lista de "int" e retornamos "true" ou "false"
	palindromo lista = if listaInversa lista == lista then True else False --se o resultado de "listaInversa" for igual a "lista", e palindromo, se nao, nao e palindromo