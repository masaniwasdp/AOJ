import Control.Applicative
import Data.List (intercalate)


solve :: (Int, Int) -> (Int, Int)

solve (x, y) = (x * y, 2 * (x + y))


input :: String -> (Int, Int)

input s = (x, y)
  where
    [x, y] = map read $ words s


output :: (Int, Int) -> String

output (a, b) = intercalate " " $ map show [a, b]


main :: IO ()

main = putStrLn . output . solve . input =<< getLine