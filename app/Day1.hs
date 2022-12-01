module Day1 (part1, part2) where

import Data.List (sortBy)
import Data.List.Split (splitWhen)

part1 :: [String] -> Int
part1 = maximum . totals

part2 :: [String] -> Int
part2 = sum . take 3 . sortBy (flip compare) . totals

totals :: [String] -> [Int]
totals = fmap (sum . fmap read) . splitWhen null