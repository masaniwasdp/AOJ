import Control.Applicative


solve :: (Int, Int) -> String

solve (a, b)
  | a > b = "a > b"
  | a < b = "a < b"

  | otherwise = "a == b"


input :: String -> (Int, Int)

input s = (x, y)
  where
    [x, y] = map read $ words s


main :: IO ()

main = putStrLn . solve . input =<< getLine