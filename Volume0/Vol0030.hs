import Control.Applicative
import Control.Monad (when)


enum :: Int -> Int -> Int -> [Int] -> [[Int]]

enum 1 s e cs = [x : cs | x <- [s .. e]]

enum n s e cs = concat [enum (n - 1) (x + 1) e (x : cs) | x <- [s .. e]]


solve :: (Int, Int) -> Int

solve (n, s) = length . filter (\x -> sum x == s) $ enum n 0 9 []


main :: IO ()

main = do
  [n, s] <- map read <$> words <$> getLine

  when (n /= 0 || s /= 0) $ do
    print $ solve (n, s)

    main
