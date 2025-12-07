type CIN = String

addSum :: CIN -> CIN
addSum cin = base ++ show (n `div` 10) ++ show (n `mod` 10)
  where
    base = take 8 cin
    n = sum (map getDigit base)

getDigit :: Char -> Int
getDigit c = read [c]

valid :: CIN -> Bool
valid cin = cin == addSum cin

main = do
  let base = "63245134"
  let cin = addSum base
  print cin
  print $ valid cin
