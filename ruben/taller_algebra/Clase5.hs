module Clase5
where

factorial :: Integer -> Integer
factorial n | n == 0 = 1
            | otherwise = n * factorial (n -1)

eAprox :: Integer -> Float
eAprox n | n == 0 = 1
         | n > 0 =  1/fromInteger (factorial n) + eAprox (n-1)

e :: Float
e = eAprox 100

parteEntera :: Float -> Integer
parteEntera a | a < 1 = 1
              | a > 1 = parteEntera (a-1)

division :: Integer -> Integer -> ( Integer , Integer )
division a d | a < d = (0, a)
             | otherwise = ( fst qr + 1, snd qr )
               where qr = division (a-d) d

sumaDivisoresHasta :: Integer -> Integer -> Integer
sumaDivisoresHasta a b | a == b = b
                       | a>=b && mod a b == 0 = b + sumaDivisoresHasta a (b+1)
                       | a>=b = sumaDivisoresHasta a (b+1)

sumaDivisores :: Integer -> Integer
sumaDivisores a = sumaDivisoresHasta a 1

menorDivisorHasta :: Integer -> Integer -> Integer
menorDivisorHasta a b | b == 1 = menorDivisorHasta a (b+1)
                      | a>=b && mod a b == 0 = b
                      | a>=b = menorDivisorHasta a (b+1)

menorDivisor :: Integer -> Integer
menorDivisor a = menorDivisorHasta a 1

esPrimo :: Integer -> Bool
esPrimo a | a>1 && menorDivisor a == a = True
          | otherwise = False
