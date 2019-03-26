import Control.Applicative
import Data.List (intercalate)
import Data.List.Split (splitOn)


solve :: [(Int, Int, Int)] -> (Int, Int)

solve xs = (r, d)
  where
    r = length $ filter (\ (w, h, x) -> w * w + h * h == x * x) xs
    d = length $ filter (\ (w, h, _) -> w == h) xs


input :: [String] -> [(Int, Int, Int)]

input ss = map (\ [x, y, z] -> (x, y, z)) xs
  where
    xs = map (map read . splitOn ",") ss


output :: (Int, Int) -> String

output (r, d) = intercalate "\n" $ map show [r, d]


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . output . solve $ input xs