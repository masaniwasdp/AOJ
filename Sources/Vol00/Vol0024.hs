import Control.Applicative
import Data.List (intercalate)


solve :: Double -> Int

solve v = truncate (v * v / 98.0) + 2


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (show . solve . read) xs