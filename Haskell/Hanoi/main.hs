import Control.Applicative

hanoi :: Int -> String -> String -> String -> [String]
hanoi 1 from to via = [from ++ "->" ++ to]
hanoi n from to via = r1 ++ r2 ++ r3
  where
    r1 = hanoi(n - 1) from via to
    r2 = [from ++ "->" ++ to]
    r3 = hanoi(n - 1) via to from

main = do
  n <- read <$> getLine
  mapM_ print $ hanoi n "a" "b" "c"
