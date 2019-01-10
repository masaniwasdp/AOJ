import Control.Applicative
import Data.List (intercalate)


decode :: String -> String -> String

decode rs "" = reverse s

decode rs ('@' : n : x : xs) = decode (replicate (read [n]) x : rs) xs

decode rs (x : xs) = decode (x : rs) xs


solve :: [String] -> [String]

solve = map (decode "")


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ solve xs
