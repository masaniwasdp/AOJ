import Control.Applicative
import Control.Monad (when)


solve :: Int -> Int

solve x = loop (div x 5) 0
  where
    loop 0 d = d
    loop n d = loop (div n 5) (d + n)


input :: String -> Int

input = read


output :: Int -> String

output = show


main :: IO ()

main = do
  n <- input <$> getLine

  when (n /= 0) $ do
    putStrLn . output $ solve n

    main