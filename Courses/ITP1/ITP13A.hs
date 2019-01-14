import Control.Applicative
import Data.List (intercalate)


main :: IO ()

main = putStrLn . intercalate "\n" $ replicate 1000 "Hello World"