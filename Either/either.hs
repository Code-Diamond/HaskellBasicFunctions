module Main where

choose :: String -> Either String String
choose option
    | option == "1" = Right ""
    | option == "2" = Right ""
    | otherwise = Left "No, I said choose between \"1\" and \"2\"."

main = do
    let ask message = do     
        putStrLn message
        choice <- getLine
        either ask return $ choose(choice)
    ask "Choose between 1 and 2."
    putStrLn("Exiting.")