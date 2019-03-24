import Control.Applicative
import Data.List (elemIndex, intercalate, nub, sort)
import Data.List.Split (splitOn)
import Data.Maybe (fromJust)


type Data = (Int, Int)


pull :: Int -> [Data] -> [Int] -> Maybe Int

pull q ds ss = (+ 1) <$> ix
  where
    ix = (flip elemIndex) ss =<< lookup q ds


solve :: ([Data], [Int]) -> [Int]

solve (ds, qs) = map (\ q -> fromJust $ pull q ds ss) qs
  where
    ss = reverse . sort . nub . snd $ unzip ds


dinput :: [Data] -> IO [Data]

dinput xs = do
  [p, s] <- map read . splitOn "," <$> getLine

  if p /= 0 || s /= 0
    then dinput $ (p, s) : xs

    else return $ reverse xs


qinput :: IO [Int]

qinput = map read . lines <$> getContents


main :: IO ()

main = do
  ds <- dinput []
  qs <- qinput

  putStrLn . intercalate "\n" . map show $ solve (ds, qs)
