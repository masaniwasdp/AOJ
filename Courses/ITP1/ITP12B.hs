import Control.Applicative


solve :: (Int, Int, Int) -> String

solve (a, b, c)
  | a < b && b < c = "Yes"

  | otherwise = "No"


input :: String -> (Int, Int, Int)

input s = (a, b, c)
  where
    [a, b, c] = map read $ words s


main :: IO ()

main = putStrLn . solve . input =<< getLine