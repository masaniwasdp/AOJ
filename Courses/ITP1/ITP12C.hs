import Control.Applicative
import Data.List (intercalate, sort)


input :: String -> [Int]

input = map read . words


output :: [Int] -> String

output = intercalate " " . map show


main :: IO ()

main = putStrLn . output . sort . input =<< getLine