import Control.Applicative
import Data.Complex (Complex((:+)), imagPart, magnitude, realPart)
import Data.List (intercalate)
import Data.List.Split (splitOn)
import Text.Printf (printf)


type Vec = Complex Double


infixl 7 <.>


(<.>) :: Double -> Vec -> Vec

x <.> v = x * realPart v :+ x * imagPart v


reflect :: Vec -> Vec -> Vec

reflect v p = magnitude p <.> (d <.> u - q)
  where
    d = 2 * (realPart u * realPart q + imagPart u * imagPart q)

    u = (recip $ magnitude v) <.> v
    q = (recip $ magnitude p) <.> p


solve :: (Vec, Vec, Vec) -> Vec

solve (v1, v2, vq) = v1 + reflect (v2 - v1) (vq - v1)


input :: String -> (Vec, Vec, Vec)

input s = (x1 :+ y1, x2 :+ y2, xq :+ yq)
  where
    [x1, y1, x2, y2, xq, yq] = map read $ splitOn "," s


output :: Vec -> String

output (x :+ y) = intercalate " " $ map (printf "%.5f") [x, y]


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs
