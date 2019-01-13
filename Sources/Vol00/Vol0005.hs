import Control.Applicative
import Data.List (intercalate)


solve :: (Int, Int) -> (Int, Int)

solve (m, n) = (x, m * n `div` x)
  where
    x = gcd m n


input :: String -> (Int, Int)

input s = (x, y)
  where
    [x, y] = map read $ words s


output :: (Int, Int) -> String

output (x, y) = intercalate " " $ map show [x, y]


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs