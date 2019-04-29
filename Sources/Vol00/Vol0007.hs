import Control.Applicative
import Data.List (intercalate)


solve :: Int -> Int

solve n = (iterate next 100000) !! n
  where
    next = \ x -> (* 1000) $ ceiling (1.05 * toRational x / 1000)


input :: String -> Int

input = read


output :: Int -> String

output = show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs