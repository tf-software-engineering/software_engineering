module MyQuickSort where

-- This Code is self-Documenting
quicksort :: Ord a => [a] -> [a]
quicksort []     = []
quicksort (x:xs) = smaller ++ [x] ++ bigger
  where
  smaller = quicksort [y | y <- xs, y <= x]
  bigger  = quicksort [y | y <- xs, y >  x]

