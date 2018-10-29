multiplyBy4 :: Int -> Int
multiplyBy4 x = x * 4

multiplyBy2 :: Int -> Int
multiplyBy2 x = x * 2

multiplyByBoth :: Int -> Int
multiplyByBoth x = multiplyBy2(multiplyBy4 x)

multBy4List = map multiplyBy4 [1,2,3,4]

main = do
    print (multiplyByBoth(4))
    print (multBy4List)