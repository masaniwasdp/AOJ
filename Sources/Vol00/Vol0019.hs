import Control.Applicative
import Data.List (intercalate)


solve :: Integer -> Integer

solve n = fact n 1
  where
    fact 1 x = x

    fact m x = fact (m - 1) (x * m)


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (show . solve . read) xs