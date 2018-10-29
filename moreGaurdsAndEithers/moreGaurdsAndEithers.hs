module Main where

playerChoice :: String -> Either String String
playerChoice option
    | option == "1" = Right "The shopkeepr has some items:\n   Sword - 50gp\n   Shield - 100gp"
    | option == "2" = Right "You go fight some monsters outside town and come back."
    | option == "3" = Right "You go to the town Inn."
    | option == "4" = Right "You go see the holy monk."
    | otherwise = Left $ "\n\nInvalid Option...\nWhat would you like do to?\n" ++ displayOptions(0)


displayOptions :: Int -> String
displayOptions option
    | option == 0 = "1 - Shop\n2 - Fight Monsters\n3 - Inn\n4 - Monk"
    | otherwise = "invalid"

main = do
    putStrLn "Welcome to Haskell fantasy land."
    let start startMessage = do
        putStrLn startMessage
        let ask message = do
            putStrLn message
            choice <- getLine
            either ask start $ playerChoice(choice)
        ask $ "What would you like do to?\n" ++ displayOptions(0)
    start "The king has sent you on the journey to become a master."