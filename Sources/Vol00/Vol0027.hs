import Control.Applicative
import Control.Monad (when)


days :: Int -> Int -> Int

days m d = d + sum (take (m - 1) xs)
  where
    xs = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30]


solve :: (Int, Int) -> String

solve (m, d) = last $ take (days m d) xs
  where
    xs = cycle ["Thursday", "Friday", "Saturday", "Sunday", "Monday", "Tuesday", "Wednesday"]


input :: String -> (Int, Int)

input s = (x, y)
  where
    [x, y] = map read $ words s


main :: IO ()

main = do
  (m, d) <- input <$> getLine

  when (m /= 0) $ do
    putStrLn $ solve (m, d)

    main