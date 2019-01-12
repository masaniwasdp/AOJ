import Control.Applicative
import Data.List (intercalate)
import Text.Printf (printf)


solve :: [Int] -> [String]

solve xs = [printf "%dx%d=%d" a b (a * b) | a <- xs, b <- xs]


main :: IO ()

main = putStrLn . intercalate "\n" $ solve [1 .. 9]
