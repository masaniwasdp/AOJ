import Control.Applicative
import Control.Monad (replicateM, when)


sub :: Int -> Int -> [Int] -> Int

sub m c [] = max m c

sub m c (x : xs)
  | x > c + x = sub (max m x) x xs
  | m > c + x = sub m (c + x) xs
  | otherwise = sub (c + x) (c + x) xs


solve :: [Int] -> Int

solve (x : xs) = sub x x xs


main :: IO ()

main = do
  n <- readLn

  when (n /= 0) $ do
    print =<< solve <$> replicateM n readLn

    main
