```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs
  print ys -- Output: [1,2,3,4,5]
  let zs = reverse ys
  print zs -- Output: [5,4,3,2,1]
  let ws = sort zs
  print ws -- Output: [1,2,3,4,5]

-- Solution: Sort individual lists before concatenation
  let sortedList1 = sort [1,2,3,4,5]
  let sortedList2 = sort [6,7,8,9,10]
  let correctConcatenation = sortedList1 ++ sortedList2
  print correctConcatenation -- Output: [1,2,3,4,5,6,7,8,9,10]

  --Alternative using `concatMap` and avoiding intermediate variables
  let correctConcatenation2 = concatMap sort [[1,2,3,4,5], [6,7,8,9,10]]
  print correctConcatenation2 -- Output: [1,2,3,4,5,6,7,8,9,10]
```