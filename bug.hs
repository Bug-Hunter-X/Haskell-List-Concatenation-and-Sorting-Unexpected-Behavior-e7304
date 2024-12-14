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

-- The bug is here:
  let error = sort [1,2,3,4,5] ++ sort [6,7,8,9,10] 
  print error -- Output: [1,2,3,4,5,6,7,8,9,10] as expected
  let error2 = sort (sort [1,2,3,4,5] ++ sort [6,7,8,9,10])
  print error2 -- Output: [1,2,3,4,5,6,7,8,9,10] as expected
  let error3 = sort (sort [1,2,3,4,5] ++ [6,7,8,9,10])
  print error3 -- Output: [1,2,3,4,5,6,7,8,9,10] as expected
  let error4 = sort ([1,2,3,4,5] ++ sort [6,7,8,9,10])
  print error4 -- Output: [1,2,3,4,5,6,7,8,9,10] as expected

-- The problem arises when using the '++' operator with lists that are not sorted, this is likely a misunderstanding of how the ++ operator works in Haskell rather than a bug in the language itself
```