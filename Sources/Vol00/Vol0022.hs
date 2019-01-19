import Control.Applicative
import Control.Monad (replicateM, when)


sub :: Int -> Int -> [Int] -> Int

sub c m [] = max c m

sub c m (x : xs)
  | x > c + x = sub x (max m x) xs

  | m > c + x = sub (c + x) m xs

  | otherwise = sub (c + x) (c + x) xs


solve :: [Int] -> Int

solve (x : xs) = sub x x xs


main :: IO ()

main = do
  n <- readLn

  when (n /= 0) $ do
    print =<< solve <$> replicateM n readLn

    main
