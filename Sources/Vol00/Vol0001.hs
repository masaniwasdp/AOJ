import Control.Applicative
import Data.List (intercalate, sort)


solve :: [Int] -> [Int]

solve = take 3 . reverse . sort


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ (map show . solve . map read) xs