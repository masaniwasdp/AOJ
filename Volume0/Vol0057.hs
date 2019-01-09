import Control.Applicative
import Data.List (intercalate)


slice :: Int -> Int

slice 0 = 1

slice n = n + slice (n - 1)


solve :: [Int] -> [Int]

solve = map slice


main :: IO ()

main = do
  xs <- map read <$> lines <$> getContents

  putStrLn . intercalate "\n" . map show $ solve xs
