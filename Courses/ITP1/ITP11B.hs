import Control.Applicative


solve :: Int -> Int

solve x = x * x * x


main :: IO ()

main = print . solve . read =<< getLine