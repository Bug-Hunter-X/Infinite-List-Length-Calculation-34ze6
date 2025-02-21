This Haskell code attempts to use the `length` function on an infinite list, which results in a non-terminating computation.

```haskell
main :: IO ()
main = do
  let infiniteList = [1..] -- Infinite list of numbers
  print (length infiniteList) -- This will never finish
```