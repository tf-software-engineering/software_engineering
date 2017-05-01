module MyQuickSort where

-- Does this even need Documentation?
quicksort :: Ord a => [a] -> [a]
quicksort (x:xs) = smaller ++ [x] ++ bigger
  where
  smaller = quicksort [y | y <= x, y <- xs]
  bigger  = quicksort [y | y >  x, y <- xs]

