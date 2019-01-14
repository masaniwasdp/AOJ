import Control.Applicative
import Control.Monad (when)
import Data.List (intercalate, sort)


input :: String -> [Int]

input = map read . words


output :: [Int] -> String

output = intercalate " " . map show


main :: IO ()

main = do
  [x, y] <- input <$> getLine

  when (x /= 0 || y /= 0) $ do
    putStrLn . output $ sort [x, y]

    main