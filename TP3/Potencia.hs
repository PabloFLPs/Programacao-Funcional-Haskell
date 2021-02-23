module Potencia where
	potencia :: Int -> Int -> Int --recebemos dois "int" e retornamos um "int"
	potencia x 0 = 1 --caso padrao de potenciacao por expoente = 0
	potencia x y = x * potencia x (y - 1)