module RemoverFim where
	tamanhoLista :: [Int] -> Int
	tamanhoLista [] = 0
	tamanhoLista (x:xs) = 1 + tamanhoLista xs

	inverterLista :: [Int] -> [Int]
	inverterLista [] = []
	inverterLista (x:xs) = inverterLista xs ++ [x]

	tirarCabecaLista :: [Int] -> [Int]
	tirarCabecaLista [] = []
	tirarCabecaLista (x:xs) = xs

	removerFim :: Int -> [Int] -> [Int]
	removerFim n lista
		|n >= tamanhoLista lista = []
		|(n == 0) = lista
		|otherwise = removerFim (n-1) (inverterLista(tirarCabecaLista (inverterLista lista))) 
		--inevertemos a lista, removemos a cabeça e ai invertemos mais uma vez