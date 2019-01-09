import Control.Applicative
import Data.List (intercalate)


runlength :: String -> String -> String

runlength txt "" = txt

runlength txt ('@' : n : x : xs) = runlength (txt ++ replicate (read [n]) x) xs

runlength txt (x : xs) = runlength (txt ++ [x]) xs


solve :: [String] -> [String]

solve xs = map (runlength "") xs


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ solve xs
