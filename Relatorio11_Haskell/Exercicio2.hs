fatorial :: Int -> Int
fatorial n
    | n > 0     = product [1..n] 
    | otherwise = n * 2          

main :: IO ()
main = do
    let numero = -10
    print (fatorial numero)