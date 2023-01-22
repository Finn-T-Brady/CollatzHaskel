collatzItr :: Int -> Int
collatzItr x | odd x = 1 + 3*x
             | otherwise = x `quot` 2

collatzFrom :: Int -> [Int]
collatzFrom n = n:collatzFrom (collatzItr n)

main = do
  let cf = collatzFrom 97
  let ct = take 119 cf
  print(ct)