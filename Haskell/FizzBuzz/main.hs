fizzBuzz :: Int -> String
fizzBuzz n
  | isFizz && isBuzz = "FizzBuzz"
  | isFizz = "Fizz"
  | isBuzz = "Buzz"
  | otherwise = show n
  where
    isFizz = n `mod` 3 == 0
    isBuzz = n `mod` 5 == 0

main = do
  mapM_ putStrLn $ map fizzBuzz [1..10]
