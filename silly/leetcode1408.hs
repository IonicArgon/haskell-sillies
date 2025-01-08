import Data.List (sortBy, tails)

wordList = ["leetcode", "et", "code"]

sortedWords :: [String] -> [String]
sortedWords = sortBy (\a b -> compare (length a) (length b))

isSubstring :: String -> String -> Bool
isSubstring substr str  = any id $ map (== substr) formattedStrings
    where formattedStrings = map (take (length substr)) $ tails str

solve [] = []
solve (x:xs) = if any (isSubstring x) xs then x : solve xs else solve xs
