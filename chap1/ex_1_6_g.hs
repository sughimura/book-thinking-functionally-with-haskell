numbers = ["Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]

numbs = ["two", "three", "four", "five", "six", "seven", "eight", "nine"]

count n =
  if n == 0
    then ""
    else numbs !! (n - 1) ++ " men, " ++ count (n - 1)

main = do
  print $ count 0
  print $ count 1
  print $ count 2
  print $ count 8
