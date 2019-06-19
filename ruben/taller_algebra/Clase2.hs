module Clase2
where

f :: Bool -> Bool
f x = not x

funcion3 :: Integer -> Integer -> Bool -> Bool
funcion3 x y b = b || (x > y)

doble :: Integer -> Integer
doble x = 2 * x

cuadruple :: Integer -> Integer
cuadruple x = doble ( doble x)

dist :: Float -> Float -> Float -> Float -> Float
dist x1 x2 y1 y2 =  sqrt ((x2 - x1)^2 + (y2 - y1)^2)

esPar :: Integer -> Bool
esPar x | mod x 2 == 0 = True
        | otherwise = False

esMultiploDe :: Integer -> Integer -> Bool
esMultiploDe a b | mod a b == 0 = True
                 | otherwise = False

triple x = x * 3

crearPar :: a -> b -> (a, b)
crearPar a b = (a,b)

invertir :: (a, b) -> (b, a)
invertir (a,b) = (b,a)

distanciaPuntos :: (Float, Float) -> (Float, Float) -> Float
distanciaPuntos (x1,x2) (y1,y2) =  sqrt ((x2 - x1)^2 + (y2 - y1)^2)

f1 :: Float -> (Float, Float, Float)
f1(x) = (2*x,x^2,x-7)

f2 :: Integer -> Integer
f2(n) | esPar n = div n 2
      | otherwise = n + 1

f3 :: Integer -> Integer
f3(n) | mod n 6 == 0 = 2
      | otherwise = 3*n + 1

g :: (Integer,Integer) -> Integer
g(n,m) = n*(m+1)

h :: (Integer,Integer) -> Integer
h(a,b) = f3(g(a,b))
