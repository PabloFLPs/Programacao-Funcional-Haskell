module Linearizar where
	linearizar :: [[Int]] -> [Int] --recebemos uma lista de lista de "int" e retornamos uma lista de "int"
	linearizar [] = []
	linearizar (x:xs) = x ++ linearizar xs --apenas criamos uma nova lista mostrando os elementos separadamente na estrutura da lista