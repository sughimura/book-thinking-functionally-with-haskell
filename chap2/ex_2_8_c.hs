import Data.Char (toUpper)

modernise :: String -> String
modernise = unwords . map capitalise . words

capitalise :: String -> String
capitalise xs = toUpper (head xs) : tail xs

main = do
  putStrLn $ modernise "The morphology of prex ーan essay in meta-algorithmics"
