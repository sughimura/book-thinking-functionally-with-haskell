months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

type Date = (Int, Int, Int)

showDate :: Date -> String
showDate (d, m, y) =
  show d
    ++ suffix d
    ++ " "
    ++ months !! (m - 1)
    ++ ", "
    ++ show y

suffix d
  | d == 1 || d == 21 || d == 31 = "st"
  | d == 2 || d == 22 = "nd"
  | d == 3 || d == 23 = "rd"
  | otherwise = "th"

main = do
  print $ showDate (10, 12, 2013)
  print $ showDate (21, 11, 2013)
