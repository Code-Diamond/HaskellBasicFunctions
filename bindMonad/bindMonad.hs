userChoice :: String -> Either String String
userChoice option
    | option == "1" = Right "You proceed with option 1."
    | option == "2" = Right "You proceed with option 2"
    | option == "3" = Right "You proceed with option 3"
    | option == "4" = Right "You proceed with option 4"
    | otherwise = Left $ "\n\nInvalid Option...\nWhat would you like to do?\n" ++ displayOptions(0)

displayOptions :: Int -> String
displayOptions option
    | option == 0 = "1 - Option 1\n2 - Option 2\n3 - Option 3\n4 - Option 4"
    | otherwise = "invalid"

main = do
    putStrLn "Welcome."
    let start startMessage = do
        putStrLn startMessage
        let ask message = do
            putStrLn message
            choice <- getLine
            either ask return $ userChoice(choice)
        ask $ "What would you like to do?\n" ++ displayOptions(0)
    
    opt <- start "Choose a number between 1-4."
    putStrLn opt

    let continue continueMessage = do
        putStrLn continueMessage
        let ask message = do
            putStrLn message
            choice <- getLine
            either continue continue $userChoice(choice)
        ask $ "What would you like to do?"
    continue "We are now here..."
