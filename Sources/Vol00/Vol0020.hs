import Control.Applicative
import Data.Char (toUpper)
import Data.List (intercalate)


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (map toUpper) xs