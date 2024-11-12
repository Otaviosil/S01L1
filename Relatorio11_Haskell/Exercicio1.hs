exercicio1 :: Int
exercicio1 = last (reverse (map (* 3) [30, 29..1]))

main :: IO ()
main = print exercicio1