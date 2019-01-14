import Control.Applicative


solve :: (Int, Int, Int) -> Int

solve (a, b, c) = length $ filter (\x -> mod c x == 0) [a .. b]


input :: String -> (Int, Int, Int)

input s = (a, b, c)
  where
    [a, b, c] = map read $ words s


main :: IO ()

main = putStrLn . show . solve . input =<< getLine