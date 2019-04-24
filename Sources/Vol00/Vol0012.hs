import Control.Applicative
import Data.List (intercalate)


inners :: [Double] -> (Double, Double, Double)

inners [x1, y1, x2, y2, x3, y3, xp, yp] = (c1, c2, c3)
  where
    c1 = (x2 - x1) * (yp - y2) - (y2 - y1) * (xp - x2)
    c2 = (x3 - x2) * (yp - y3) - (y3 - y2) * (xp - x3)
    c3 = (x1 - x3) * (yp - y1) - (y1 - y3) * (xp - x1)

inners _ = undefined


solve :: [Double] -> Bool

solve xs = (c1 > 0 && c2 > 0 && c3 > 0) || (c1 < 0 && c2 < 0 && c3 < 0)
  where
    (c1, c2, c3) = inners xs


input :: String -> [Double]

input = map read . words


output :: Bool -> String

output x = if x then "YES" else "NO"


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs