import Control.Applicative
import Data.List (intercalate)


solve :: Int -> [String]

solve n = replicate n "Hello World"


main :: IO ()

main = putStrLn . intercalate "\n" $ solve 1000