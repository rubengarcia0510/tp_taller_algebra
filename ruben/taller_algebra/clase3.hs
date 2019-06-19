import Clase2

unidades :: Integer -> Integer
unidades x = mod (abs x) 10

sumaUnidades3 :: (Integer,Integer,Integer) -> Integer
sumaUnidades3(a,b,c) = (unidades a) + (unidades b) + (unidades c)

todosImpares :: Integer -> Integer -> Integer -> Bool
todosImpares a b c | not (esPar a) && not (esPar b) && not (esPar c) = True
                    | otherwise = False

almenosUnImpar :: Integer -> Integer -> Integer -> Bool
almenosUnImpar a b c | not (esPar a) || not (esPar b) || not (esPar c) = True
                     | otherwise = False

alMenosDosImpares :: Integer -> Integer -> Integer -> Bool
alMenosDosImpares a b c | todosImpares a b c || (almenosUnImpar a b c && esPar(a+b+c)) = True
                        | otherwise = False

alMenosDosPares :: Integer -> Integer -> Integer -> Bool
alMenosDosPares a b c | not (todosImpares a b c) && not (alMenosDosImpares a b c) = True
                      | otherwise = False

r1 :: Integer -> Integer -> Bool
r1 a b | (esPar a && esPar b) || (not (esPar a) && not (esPar b)) = True
       | otherwise = False

r2 :: Integer -> Integer -> Bool
r2 a b | mod (2 * a + 3 * b) 5 == 0 = True
       | otherwise = False

r3 :: Integer -> Integer -> Bool
r3 a b | (unidades a /= unidades b) && (unidades (a*10+b) /= unidades a) = True
       | otherwise = False

r8 :: Integer -> Integer -> Bool
r8 x y | (x < 3 && y < 3) || (x >= 3 && y >= 3) = True
       | otherwise = False

r9 :: Integer -> Integer -> Bool
r9 x y | (x < 3 && y < 3) || ((x >= 3 && x < 7) && (y >= 3 && y < 7)) || (x >= 7 && y >= 7) = True
       | otherwise = False

r10a :: Integer -> Integer -> Integer -> Integer -> Integer -> Bool
r10a a b k p q| a/=0 && b/=0 && a == k*p && b == k*q = True
             | otherwise = False

r10b :: Integer -> Integer -> Float -> Integer -> Integer -> Bool
r10b a b k p q| a/=0 && b/=0 && a == k*p && b == k*q = True
                          | otherwise = False
