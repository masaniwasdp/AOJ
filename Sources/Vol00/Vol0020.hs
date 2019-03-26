import Control.Applicative
import Data.Char (toUpper)


main :: IO ()

main = putStrLn . (map toUpper) =<< getLine