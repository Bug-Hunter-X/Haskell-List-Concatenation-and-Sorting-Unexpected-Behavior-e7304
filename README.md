# Haskell List Concatenation and Sorting: An Unexpected Behavior

This repository demonstrates an issue related to list concatenation ('++' operator) and sorting in Haskell. The problem arises when combining unsorted lists and sorting the result, leading to unexpected behavior.

## Problem Description

The core issue is a misunderstanding of how the '++' operator works in Haskell. When concatenating unsorted lists, and then sorting, the result is not what one might intuitively expect.  This is not a language bug; it's a consequence of how Haskell handles list operations and the order of operations. 

## Solution

The solution involves clarifying the order of operations and ensuring that list concatenation is used correctly before the sort function.  Proper sorting requires to sort individual lists before concatenation or use alternative functions like `Data.List.sortOn` if sorting based on a particular criteria is needed.

## How to Reproduce

1. Clone this repository.
2. Compile and run `bug.hs` to observe the unexpected behavior.
3. Review `bugSolution.hs` for the corrected approach.