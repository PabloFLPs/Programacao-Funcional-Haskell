module Primo where
	primo :: Int -> Bool --recebe um "int" e retorna "true" ou "false"
	primo numero = if length [x | x <- [1..numero], mod numero x == 0] == 2 then True else False
	--se o tamanho do conjunto que contem tds os divisores de "numero" for 2, ent "numero" e primo, se nao, nao e primo