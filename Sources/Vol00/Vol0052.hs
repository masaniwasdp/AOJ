import Control.Applicative
import Control.Monad (when)


solve :: Int -> Int

solve x = loop (div x 5) 0
  where
    loop 0 d = d

    loop n d = loop (div n 5) (d + n)


main :: IO ()

main = do
  n <- readLn

  when (n /= 0) $ do
    putStrLn . show $ solve n

    main