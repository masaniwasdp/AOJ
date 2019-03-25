import Control.Applicative
import Data.List (intercalate)


solve :: Integer -> Integer

solve n = fact n 1
  where
    fact 1 x = x
    fact m x = fact (m - 1) (x * m)


input :: String -> Integer

input = read


output :: Integer -> String

output = show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs