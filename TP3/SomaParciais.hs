module SomaParciais where
	progressaoAritmetica :: Int -> Int
	progressaoAritmetica 1 = 1
	progressaoAritmetica n = progressaoAritmetica (n - 1) + n

	somaParciais :: [Int] -> [Int]
	somaParciais [] = []
	somaParciais (x:xs) = [progressaoAritmetica x] ++ somaParciais xs