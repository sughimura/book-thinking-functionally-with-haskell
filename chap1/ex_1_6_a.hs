import Data.List (sort)

double :: Integer -> Integer
double x = 2 * x

xs :: [Integer]
xs = [1, 4, 4, 3]

main = do
  print $ map double xs
  print $ map (double . double) xs
  print $ map double []
  print ""
  print $ (sum . map double) xs
  print $ (double . sum) xs
  print $ (sum . sort) xs
  print $ sum xs
