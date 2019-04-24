import Control.Applicative
import Control.Monad (replicateM)
import Data.List (intercalate)


solve :: Int -> Int

solve n = length . filter (== n) . map sum $ replicateM 4 [0 .. 9]


input :: String -> Int

input = read


output :: Int -> String

output = show


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (output . solve . input) xs