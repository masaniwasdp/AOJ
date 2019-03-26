import Control.Applicative
import Data.List (intercalate)


solve :: Integer -> Integer

solve d = sum . map (\ x -> x * x * d) $ init [d, d * 2 .. 600]


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (show . solve . read) xs