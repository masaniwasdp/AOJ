import Control.Applicative
import Data.List (intercalate)


terms :: Int -> Double -> [Double]

terms n a = eTerm (n - 1) [a]
  where
    oTerm 0 xs = reverse xs

    oTerm m xs = eTerm (m - 1) $ (head xs / 3) : xs

    eTerm 0 xs = reverse xs

    eTerm m xs = oTerm (m - 1) $ (head xs * 2) : xs


solve :: Double -> Double

solve a = sum $ terms 10 a


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map (show . solve . read) xs