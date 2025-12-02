import Data.Char (toLower)
commonWords :: Int -> [Char] -> [Char]
words :: Text -> [Word]

type Text = [Char]

type Word = [Char]

map :: (a->b) -> [a] -> [b]
map toLower :: Text -> Text

sortWords :: [Word] -> [Word]

countRuns :: [Word] -> [(Int,Word)]

sortRuns :: [(Int,Word)] -> [(Int,Word)]

take :: Int -> [a] -> [a]

showRun :: (Int,Word) -> String

map showRun :: [(Int, Word)] -> [String]

concat :: [[a]] -> [a]

commonWords :: Int -> Text -> String
commonWords n = concat . map showRun . take n
              . sortRuns . countRuns . sortWords
              . words .
