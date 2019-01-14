import Control.Applicative
import Control.Monad (when)
import Text.Printf (printf)


output :: (Int, Int) -> String

output (i, x) = printf "Case %d: %d" i x


loop :: Int -> IO ()

loop i = do
  x <- readLn

  when (x /= 0) $ do
    putStrLn $ output (i, x)

    loop $ i + 1


main :: IO ()

main = loop 1