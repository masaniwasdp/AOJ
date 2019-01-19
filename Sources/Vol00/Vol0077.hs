import Control.Applicative
import Data.Char (digitToInt)
import Data.List (intercalate)


decode :: String -> String

decode xs = reverse $ loop "" xs
  where
    loop s "" = s

    loop s ('@' : n : r : rs) = loop (replicate (digitToInt n) r ++ s) rs

    loop s (r : rs) = loop (r : s) rs


solve :: [String] -> [String]

solve = map decode


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ solve xs
