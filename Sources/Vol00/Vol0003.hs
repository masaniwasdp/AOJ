import Control.Applicative
import Data.List (intercalate, sort)


solve :: (Int, Int, Int) -> String

solve (x, y, z)
  | x * x + y * y == z * z = "YES"
  | y * y + z * z == x * x = "YES"
  | z * z + x * x == y * y = "YES"

  | otherwise = "NO"


input :: String -> (Int, Int, Int)

input s = (x, y, z)
  where
    [x, y, z] = map read $ words s


main :: IO ()

main = do
  xs <- tail . lines <$> getContents

  putStrLn . intercalate "\n" $ map (solve . input) xs