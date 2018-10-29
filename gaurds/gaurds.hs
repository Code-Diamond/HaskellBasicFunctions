respondToLevel :: Int -> String
respondToLevel level
    | (level <= 10) = "noob"
    | (level > 10) && (level <= 20) = "average"
    | otherwise  = "master"
main = do
	putStrLn $ respondToLevel(14)