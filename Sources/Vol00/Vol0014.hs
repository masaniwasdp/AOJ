import Control.Applicative
import Data.List (intercalate)


solve :: Integer -> Integer

solve d = sum
  . map (* d)
  . map (^ 2) $ init [d, d * 2 .. 600]


input :: String -> Integer

input = read


output :: Integer -> String

output = show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs