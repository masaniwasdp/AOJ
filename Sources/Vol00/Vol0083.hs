import Control.Applicative
import Data.List (intercalate)


data Era = M !Date | T !Date | S !Date | H !Date


instance Show Era where
  show (H d) = "heisei " ++ show d
  show (S d) = "showa "  ++ show d
  show (T d) = "taisho " ++ show d
  show (M d) = "meiji "  ++ show d


data Date = Date !Int !Int !Int deriving (Eq)


instance Ord Date where
  a <= b = index a <= index b
    where
      index (Date y m d) = 366 * y + 31 * m + d


instance Show Date where
  show (Date y m d) = intercalate " " $ map show [y, m, d]


conv :: Date -> Maybe Era

conv date @ (Date y m d)
  | (Date 1989 01 08) <= date = Just . H $ Date (y - 1988) m d
  | (Date 1926 12 25) <= date = Just . S $ Date (y - 1925) m d
  | (Date 1912 07 30) <= date = Just . T $ Date (y - 1911) m d
  | (Date 1868 09 08) <= date = Just . M $ Date (y - 1867) m d

  | otherwise = Nothing


solve :: String -> String

solve s = maybe "pre-meiji" show $ conv (Date y m d)
  where
    [y, m, d] = map read $ words s


main :: IO ()

main = do
  xs <- lines <$> getContents

  putStrLn . intercalate "\n" $ map solve xs
