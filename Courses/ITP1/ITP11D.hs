import Control.Applicative
import Data.List (intercalate)


solve :: Int -> (Int, Int, Int)

solve t = (h, m, s)
  where
    h = t `div` 3600
    m = t `mod` 3600 `div` 60
    s = t `mod` 60


output :: (Int, Int, Int) -> String

output (h, m, s) = intercalate ":" $ map show [h, m, s]


main :: IO ()

main = putStrLn . output . solve . read =<< getLine