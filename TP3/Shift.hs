module Shift where
	shift :: Int -> [Int] -> [Int]
	shift 0 list = list
	shift n list = drop n list ++ take n list --juntamos o "drop" da lista com o "tak"e dela