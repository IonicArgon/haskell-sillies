import System.Environment (getArgs)

foo x = x^2 + 2*x + 1

integrator :: (Float -> Float) -> Float -> Float -> Float -> Float
integrator f lb ub sigma = sigma * sum (map f [lb, (lb + sigma)..ub])

main = do
    input <- getArgs
    case input of
        [x, y, z] -> do
            let lb = read x
            let ub = read y
            let sigma = read z
            print $ integrator foo lb ub sigma
        _ -> print "Usage: ./integrate <lb> <ub> <sigma>"
