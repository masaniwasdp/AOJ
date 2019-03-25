import Control.Applicative
import Data.List (intercalate)


clip :: Integer -> Maybe Integer

clip x
  | x < (10 ^ 80 :: Integer) = Just x

  | otherwise = Nothing


solve :: [(Integer, Integer)] -> [Maybe Integer]

solve = map clip . uncurry (zipWith (+)) . unzip


input :: [String] -> [(Integer, Integer)]

input ss = loop (tail ss) []
  where
    loop [] xs = reverse xs

    loop (x : y : zs) xs = loop zs $ (read x, read y) : xs


output :: [Maybe Integer] -> [String]

output = map $ maybe "overflow" show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" . output . solve $ input xs