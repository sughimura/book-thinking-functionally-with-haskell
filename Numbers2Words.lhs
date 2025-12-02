> convert1 :: Int -> String
> convert1 n = units !! n
>
> units, teens, tens :: [String]
> units = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
> teens = ["ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
> tens = ["twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
>
> convert2 :: Int -> String
> convert2 n
>   | t == 0 = units !! u
>   | t == 1 = teens !! u
>   | u == 0 = tens !! (t-2)
>   | otherwise = tens !! (t-2) ++ "-" ++ units !! u
>   where
>     (t, u) = (div n 10, mod n 10)
>
> convert3 :: Int -> String
> convert3 n
>   | h == 0 = convert2 t
>   | t == 0 = units !! h ++ " hundred"
>   | otherwise = units !! h ++ " hundred and " ++ convert2 t
>   where
>     (h, t) = (n `div` 100, n `mod` 100)

