import Control.Applicative


main :: IO ()

main = putStrLn . reverse =<< getLine