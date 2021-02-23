module Binario where
	binario :: Int -> [Int] --recebe um "int" e retorna uma lista de "int"
	binario 0 = [] --caso para ajudar na recursao
	binario numero = binario (div numero 2) ++ [x | x <- [mod numero 2]]  -- (numero `div` 2) e [numero `mod` 2]
	--dividimos sempre o numero por 2 e add a lista, o resto da divisao sucessiva por 2. A ordem inversa, e dada pela recursividade.