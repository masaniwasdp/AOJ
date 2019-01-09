import Control.Applicative
import Data.List (elemIndex, intercalate, nub, sort)
import Data.Maybe (fromJust)


type Data = (Int, Int)


pull :: Int -> [Data] -> [Int] -> Maybe Int

pull q ds ss = do
  s <- lookup q ds
  i <- elemIndex s ss

  Just $ i + 1


solve :: ([Data], [Int]) -> [Int]

solve (ds, qs) = [fromJust $ pull q ds ss | q <- qs]
  where
    ss = reverse . sort . nub . snd $ unzip ds


split :: [String] -> String -> String -> [String]

split ls s "" = ls ++ [s]

split ls s (x : xs)
  | x == ',' = split (ls ++ [s]) "" xs

  | otherwise = split ls (s ++ [x]) xs


dinput :: [Data] -> IO [Data]

dinput xs = do
  [p, s] <- map read <$> split [] "" <$> getLine

  if p /= 0 || s /= 0
    then dinput $ xs ++ [(p, s)]
    else return xs


qinput :: IO [Int]

qinput = map read <$> lines <$> getContents


main :: IO ()

main = do
  ds <- dinput []
  qs <- qinput

  putStrLn . intercalate "\n" . map show $ solve (ds, qs)
