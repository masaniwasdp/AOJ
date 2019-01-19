import Control.Applicative
import Control.Monad (when)


enum :: Int -> Int -> Int -> [[Int]]

enum n s e = loop n s []
  where
    loop m u xs
      | m < 1 = [x : xs | x <- [u .. e]]

      | otherwise = concat [loop (m - 1) (x + 1) (x : xs) | x <- [u .. e]]


solve :: (Int, Int) -> Int

solve (n, s) = length . filter (\x -> sum x == s) $ enum n 0 9


main :: IO ()

main = do
  [n, s] <- map read . words <$> getLine

  when (n /= 0 || s /= 0) $ do
    print $ solve (n, s)

    main
