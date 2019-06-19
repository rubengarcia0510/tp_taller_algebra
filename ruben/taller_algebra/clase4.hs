esPar :: Integer -> Bool
esPar n | n==0 = True
        | otherwise = not ( esPar (n -1) )

esMultiplo3 :: Integer -> Bool
esMultiplo3 n | n<3 = False
              | n==3 = True
              | n>3 = esMultiplo3 (n-3)

sumaImpares :: Integer -> Integer
sumaImpares n | n==0 = 0
              | n==1 = 1
              | esPar n = sumaImpares (n-1)
              | otherwise = n + sumaImpares (n-1)

medioFact :: Integer -> Integer
medioFact n | n==1 = 1
            | n==2 = 2
            | otherwise = n * medioFact (n-2)

fib :: Integer -> Integer
fib n | n == 0 = 0
      | n == 1 = 1
      | otherwise =fib (n - 1) + fib (n - 2)

factorial :: Integer -> Integer
factorial n | n == 0 = 1
            | otherwise = n * factorial (n -1)

suc3a :: Integer -> Integer -> Integer
suc3a a b | b == 0 = 2
          | otherwise = 2 * (b-1) * suc3a a (b-1) + 2^((b-1)+1) * factorial (b-1)

prueba_suc3a :: Integer -> Integer -> Integer
prueba_suc3a a n = 2^n * factorial n


suc3b :: Integer -> Integer -> Integer
suc3b a n | n == 1 = 1
          | n == 2 = 2
          | n > 2 = n*suc3b a (n-1)+2*(n-1)*suc3b a (n-2)

suc3c :: Integer -> Integer -> Integer
suc3c a n | n == 1 = (-3)
          | n == 2 = 6
          | n > 2 && esPar n = (-1)* suc3c a (n-1)
          | otherwise = suc3c a (n-1) + 2*suc3c a (n-2) + 9


sum1 :: Integer -> Integer
sum1 n | n == 0 = 1
       | n > 0 = 2^n + sum1 (n-1)

sum2 :: Integer -> Float -> Float
sum2 n q | n == 1 = q
         | n>1 = q^n + sum2 (n-1) q

sum3 :: Integer -> Float -> Float
sum3 n q | n == 1 = q
         | n>1 = q^(2*n) + sum2 (n-1) q + sum3 (n-1) q

sum4 :: Integer -> Float -> Float
sum4 n q | n == 1 = q
         | n>1 = q^(2*n) + sum3 (n-1) q + sum4 (n-1) q

recursiva :: Integer -> Integer
recursiva a | a>=0 = a
            | othervise = recursiva a


