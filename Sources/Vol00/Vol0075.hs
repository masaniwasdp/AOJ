import Control.Applicative
import Data.List (intercalate)
import Data.List.Split (splitOn)


cond :: (Double, Double, Double) -> Bool

cond (_, w, h) = w / h / h >= 25.0


input :: String -> (Double, Double, Double)

input s = (x, y, z)
  where
    [x, y, z] = map read $ splitOn "," s


output :: (Double, Double, Double) -> String

output (s, _, _) = show (truncate s :: Int)


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" . map output . filter cond $ map input xs