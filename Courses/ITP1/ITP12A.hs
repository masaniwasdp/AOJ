import Control.Applicative
import Data.List (intercalate)


data Relation = L | R | E

instance Show Relation where
  show L = ">"
  show R = "<"
  show E = "=="


solve :: (Int, Int) -> Relation

solve (a, b)
  | a > b = L
  | a < b = R

  | otherwise = E


input :: String -> (Int, Int)

input s = (x, y)
  where
    [x, y] = map read $ words s


output :: Relation -> String

output r = intercalate " " ["a", show r, "b"]


main :: IO ()

main = putStrLn . output . solve . input =<< getLine