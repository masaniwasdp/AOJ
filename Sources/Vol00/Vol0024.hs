import Control.Applicative
import Data.List (intercalate)


solve :: Double -> Int

solve v = truncate (v * v / 98.0) + 2


input :: String -> Double

input = read


output :: Int -> String

output = show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs