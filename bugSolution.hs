The solution is to avoid using `length` on potentially infinite lists.  If you need to process elements from an infinite list, consider using functions that operate lazily and terminate based on a condition, or use a finite portion of the list.

```haskell
main :: IO ()
main = do
  let finiteList = take 10 [1..] -- Take the first 10 elements
  print (length finiteList) -- This will work
```
Alternatively, if you need to determine if a list is finite, use pattern matching techniques to check for the empty list.  However this will not return the length, only a finite or infinite result.

```haskell
checkList :: [a] -> Bool
checkList [] = True -- Finite
checkList (_:_) = False -- Infinite (we only check for empty or non-empty)
```