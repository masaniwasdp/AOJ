import Control.Applicative


solve :: [String] -> Int

solve = length . filter (\x -> x == reverse x)


main :: IO ()

main = do
  xs <- lines <$> getContents

  print $ solve xs
