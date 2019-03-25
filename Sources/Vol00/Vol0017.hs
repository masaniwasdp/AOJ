import Control.Applicative
import Data.Char (chr, isLower, ord)
import Data.List (find, intercalate, isInfixOf)
import Data.Maybe (fromJust)


shift :: Char -> Char

shift c
  | c == 'z' = 'a'

  | isLower c = chr $ ord c + 1

  | otherwise = c


solve :: String -> String

solve = fromJust . find cond . iterate (map shift)
  where
    cond = \ xs -> isInfixOf "the" xs || isInfixOf "this" xs || isInfixOf "that" xs


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map solve xs