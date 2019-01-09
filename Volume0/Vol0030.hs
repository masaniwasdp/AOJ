import Control.Applicative
import Control.Monad (when)


enum :: Int -> Int -> Int -> [Int] -> [[Int]]

enum 1 f t c = [c ++ [x] | x <- [f .. t]]

enum n f t c = concat [enum (n - 1) (x + 1) t (c ++ [x]) | x <- [f .. t]]


solve :: (Int, Int) -> Int

solve (n, s) = length [x | x <- enum n 0 9 [], sum x == s]


main :: IO ()

main = do
  [n, s] <- map read <$> words <$> getLine

  when (n /= 0 || s /= 0) $ do
    print $ solve (n, s)

    main
