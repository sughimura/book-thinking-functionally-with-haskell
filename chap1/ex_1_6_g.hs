numbers = ["Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]

numbs = ["two", "three", "four", "five", "six", "seven", "eight", "nine"]

count n =
  if n == 0
    then ""
    else numbs !! (n - 1) ++ " men, " ++ count (n - 1)

line1 n =
  if n == 1
    then "One man went to mow\n"
    else numbers !! (n - 2) ++ " men " ++ count (n - 2)

line2 n = "Went to mow a meadow\n"

line3 n =
  if n == 1
    then "One man add his dog\n"
    else
      numbers !! (n - 2)
        ++ " men "
        ++ count (n - 2)
        ++ "One man and his dog\n"

main = do
  print $ count 0
  print $ count 1
  print $ count 2
  print $ count 8
  print $ line1 1
  print $ line1 2
  print $ line1 9
  print $ line2 1
  print "=== line3 ==="
  print $ line3 1
  print $ line3 2
  print $ line3 9
