import Control.Applicative
import Data.List (intercalate)


cross :: [Double] -> Double

cross [x1, y1, x2, y2, x3, y3, x4, y4] = rslt
  where
    rslt = (x2 - x1) * (y4 - y3) - (x4 - x3) * (y2 - y1)

cross _ = undefined


solve :: [Double] -> Bool

solve xs = abs (cross xs) < 1.0e-10


input :: String -> [Double]

input = map read . words


output :: Bool -> String

output x = if x then "YES" else "NO"


main :: IO ()

main = do
  xs <- tail . lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs