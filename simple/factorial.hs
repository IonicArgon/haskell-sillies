import System.Environment(getArgs)

factorial 1 = 1
factorial x = x * factorial (x - 1)

main = do
    input <- getArgs
    case input of
        [x] -> print $ factorial $ read x
        _ -> print "Usage: ./factorial <number>"
