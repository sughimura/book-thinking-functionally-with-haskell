inc, double :: Integer -> Integer
inc n = n + 1
double n = 2 * n

main :: IO ()
main = do
  print $ inc 3
  print $ double 3
