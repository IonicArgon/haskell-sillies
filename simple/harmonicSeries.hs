import System.Environment(getArgs)

harmonic x = sum $ map (1/) $ take x [1..]

main = do
    input <- getArgs
    case input of
        [x] -> print $ map harmonic [1..(read x)]
        _ -> print "Usage: ./harmonic <number>"
