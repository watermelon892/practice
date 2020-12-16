import Control.Applicative

main = do
  input1 <- getLine
  input2 <- getLine
  let a = (read input1 :: Int)
      b = (read input2 :: Int)
      ret = a + b
  print ret
