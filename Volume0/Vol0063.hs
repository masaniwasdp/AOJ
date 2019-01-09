import Control.Applicative


solve :: [String] -> Int
 
solve xs = length [txt | txt <- xs, txt == reverse txt]


main :: IO ()

main = do
  xs <- lines <$> getContents

  print $ solve xs
