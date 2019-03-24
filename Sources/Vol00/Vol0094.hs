import Control.Applicative
import Data.List (intercalate)


solve :: (Double, Double) -> Double

solve (a, b) = a * b / 3.305785


input :: String -> (Double, Double)

input s = (x, y)
  where
    [x, y] = map read $ words s


output :: Double -> String

output = show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs