import Control.Applicative
import Data.List (intercalate, sort)


isTriangle :: Int -> Int -> Int -> Bool

isTriangle x y z = a * a + b * b == c * c
  where
    [a, b, c] = sort [x, y, z]


solve :: (Int, Int, Int) -> String

solve (x, y, z)
  | isTriangle x y z = "YES"

  | otherwise = "NO"


input :: String -> (Int, Int, Int)

input s = (x, y, z)
  where
    [x, y, z] = map read $ words s


main :: IO ()

main = do
  xs <- tail . lines <$> getContents

  putStrLn . intercalate "\n" $ map (solve . input) xs