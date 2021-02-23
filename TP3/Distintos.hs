module Distintos where
	verificaLista :: Int -> [Int] -> Bool --recebe um "int" e uma lista de "int", retorna "true" ou "false"
	verificaLista numero [] = False --lista vazia n possuira o numero
	verificaLista numero (x:xs) = (x == numero) || verificaLista numero xs --verifica se o numero esta na cabeca e/ou na cauda da lista

	distintos :: [Int] -> Bool --recebe uma lista de "int" e retorna "true" ou "false"
	distintos [] = True --se a lista esta vazia, ent se encaixa no caso de distincao de elementos
	distintos (x:xs) = if verificaLista x xs then False else distintos xs --verifica elem por elem da cabeca ate o final da lista