--Thread control used for sleeping program
import Control.Concurrent

-- returns factorization of an Int
factorial :: Int -> Int
factorial 0 = 1
factorial number = number * factorial ( number - 1 )

-- return a concatenated string
conc :: String -> String -> String
conc str1 str2 = str1 ++ str2

-- A recursive function that acts kind of like a for loop
for 0 action = return ()
for i action =
    do
        action
        print i
        threadDelay 1000000 -- measured in microseconds (1 mil = 1 sec)
        for (i-1) action


-- main
main = do
    -- warm up with variables
    let a = "Hello again, "
    let b = "old friend."
    let c = conc a b
    putStrLn (c)

    -- get a string from user
    putStrLn "How's it goin?"
    itsGoing <- getLine
    --Some simple logic
    if itsGoing == "good" || itsGoing == "great" then putStrLn "\nAwesome." else putStrLn "\nOh..ok.."
    
    -- calling factorial function
    let number = 10 --let defines temp names
    putStr $ "\nHey did you know the factorial of " ++ (show number) ++ " is: " -- turns int into string
    putStr . show $ (factorial number) -- a better way of doing it..
    putStrLn $  "?"

    -- careful with putstrln . show and unicode escape sequences
    putStrLn $ "Also the value of \960 (pi) is " ++ (show (1 * pi))

    -- example way to make a for loop out of recursion
    putStrLn "Let's do a countdown!" 
    let i = 6 -- number of iterations
    for (i) (putStr "...")

    -- some array goodies
    let list = [1,2,3,4]
    let anotherList = [5,6,7,9]
    let combined = list ++ anotherList
    putStrLn . show $ (combined)

    -- reverse order operation
    putStrLn . show $ (reverse combined)

    -- get the length
    print (length combined)

    -- get the maximum
    print (maximum combined)

    putStrLn("Goodbye!")