import Control.Applicative
import Data.List (intercalate)


solve :: (Int, Int) -> Int

solve (x, y) = length . show $ x + y


input :: String -> (Int, Int)

input s = (x, y)
  where
    [x, y] = map read $ words s


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (show . solve . input) xs