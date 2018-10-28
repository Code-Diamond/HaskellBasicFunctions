{-
	Some list manipulation tools
-}
import Data.List
import System.IO

main = do
	
	let maxInt = maxBound :: Int
	let minInt = minBound :: Int
	
	putStr "The maximum an int can hold is: "
	putStr (show maxInt)
	putStr ", and the minimum is: "
	print minInt

	putStr "The remainder from dividing 5 by 4 is: "
	print (5 `mod` 4)
	putStr "And the remainder of dividing 6 by 4 is: "
	print (mod 6 4)

	putStr "The square root of 25 is: "
	print (sqrt (fromIntegral 25))
	putStr "But since we're talking about whole numbers, 5.0 is the same as: "
	print (truncate 5.0)
	putStr "If I were to round, I'd tell you that 5.5 is: "
	print (round 5.5)
	putStr "And obviously I'd tell that rounding 5.49 is: "
	print (round 5.49)

	let primeNumbers = [3,5,7,11]
	putStrLn "I just made some prime numbers in a list: [3,5,7,11]."
	putStrLn "And now I'm going to concatenate with another list: [13,17,19,23,29]."
	let morePrimes = primeNumbers ++ [13,17,19,23,29]
	putStrLn . show $ morePrimes

	putStr "I can tell you that the 0th place of the list is: "
	let firstElement = morePrimes !! 0
	putStrLn .show $ firstElement
	putStr "And that the 5th place is therefore: "
	let sixthElement = morePrimes !! 5
	putStrLn .show $ sixthElement

	putStrLn "Speaking of elements, I don't like the last one so I'm going to remove it now..."
	let likedElements = init morePrimes
	putStr "Check it out: "
	putStrLn . show $ likedElements

	putStrLn $ "Now the list is only " ++ show (length likedElements) ++ " elements in length."
	putStrLn $ "The first element being " ++ show (head likedElements) ++ " and the last being " ++ show (last likedElements) ++ "."

	putStrLn $ (take 50 (repeat '-'))  --writes a 50 character line of -

	putStr "Lets check if this list is empty [1,2] : "
	putStrLn $ show (null [1,2])

	putStr "What about this one  []  ? : "
	putStrLn $ show (null [])

	putStr "I'm going to find if there's a 5 in this list [1,2,3,4,5] : "
	putStrLn $ show (5 `elem` [1,2,3,4,5])

	putStr "If I were to multiple all the elements of this list [12,10,10], I'd get the value: "
	putStrLn $ show (product [12,10,10])

	putStrLn "The first 300 even numbers are: " 
	putStrLn $ show [2,4..300]

	putStr "If I took out every other letter of the alphabet it would look like this: "
	putStrLn $ show ['A', 'C'..'Z']

	let comrades = ["BOB", "JEN", "TIM"]
	let tag = [123, 234, 567]
	let ids = zip comrades tag

	putStrLn $ "And some tuple magic for fun : " ++ show ids