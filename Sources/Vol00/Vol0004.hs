import Control.Applicative
import Data.List (intercalate)
import Text.Printf (printf)


type Equation = (Double, Double, Double)


solve :: (Equation, Equation) -> (Double, Double)

solve ((a, b, c), (d, e, f)) = (x, y)
  where
    x = recip (a * e - b * d) * ((e * c) + (-b * f)) + 0.00005
    y = recip (a * e - b * d) * ((-d * c) + (a * f)) + 0.00005


input :: String -> (Equation, Equation)

input s = ((a, b, c), (d, e, f))
  where
    [a, b, c, d, e, f] = map read $ words s


output :: (Double, Double) -> String

output (x, y) = printf "%.3f %.3f" x y


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs