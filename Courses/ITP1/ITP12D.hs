import Control.Applicative


solve :: (Int, Int, Int, Int, Int) -> String

solve (w, h, x, y, r)
  | x < r || y < r = "No"

  | x > w - r || y > h - r = "No"

  | otherwise = "Yes"


input :: String -> (Int, Int, Int, Int, Int)

input s = (w, h, x, y, r)
  where
    [w, h, x, y, r] = map read $ words s


main :: IO ()

main = putStrLn . solve . input =<< getLine