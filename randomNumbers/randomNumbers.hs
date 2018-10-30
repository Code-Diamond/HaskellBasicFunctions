import System.Random

threeCoins :: StdGen -> (Bool, Bool, Bool)  
threeCoins gen =   
    let (firstCoin, newGen) = random gen  
        (secondCoin, newGen') = random newGen  
        (thirdCoin, newGen'') = random newGen'  
    in  (firstCoin, secondCoin, thirdCoin)  

randoms' :: (RandomGen g, Random a) => g -> [a]  
randoms' gen = let (value, newGen) = random gen in value:randoms' newGen  


main = do
    putStrLn . show $ threeCoins(mkStdGen 21)
    putStrLn . show $ take 5  (randoms (mkStdGen 11) :: [Int])
    putStrLn . show $ take 5 ( randoms (mkStdGen 11) :: [Bool])  
    gen <- getStdGen
    let (randNumber, newGen) = randomR (1,10) gen :: (Int, StdGen)  
    print $ randNumber