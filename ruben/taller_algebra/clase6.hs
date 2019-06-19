import Clase5

--factorial :: Integer -> Integer
--factorial 0 = 1
--factorial n = n * factorial (n - 1)

iguales :: Integer -> Integer -> Bool
-- iguales x x = True
iguales x y = False

yLogico :: Bool -> Bool -> Bool
yLogico True True = True
yLogico True False = False
yLogico False True = False
yLogico False False = False

oLogico :: Bool -> Bool -> Bool
oLogico True True = True
oLogico True False = True
oLogico False True = True
oLogico False False = False

implica :: Bool -> Bool -> Bool
implica True True = True
implica True False = True
implica False True = False
implica False False = True

sumaGaussiana :: Integer -> Integer
sumaGaussiana 0 = 0
sumaGaussiana n = n + sumaGaussiana (n-1)

algunoEsCero :: (Integer, Integer, Integer) -> Bool
algunoEsCero (0,0,0) = True
algunoEsCero (0,x,y) = True
algunoEsCero (x,0,y) = True
algunoEsCero (x,y,0) = True
algunoEsCero (x,y,z) = False

productoInterno :: (Float, Float) -> (Float, Float) -> Float
productoInterno (x1, y1) (x2, y2) = x1*x2 + y1*y2


unidades :: Integer -> Integer
unidades x = mod (abs x) 10

decenas :: Integer -> Integer
decenas n = unidades (div (n - unidades n) 10)

sumaDigitos :: Integer -> Integer
sumaDigitos n | n - unidades n == 0 = n
              | n - unidades n > 0 = unidades n + sumaDigitos ( div (n - (unidades n)) 10 )

digitosIguales :: Integer -> Bool
digitosIguales n | n - unidades n == 0 && n == unidades n = True
                 | n > 10 && decenas n /= unidades n = False
                 | n > 10 && decenas n == unidades n = digitosIguales ( div (n - (unidades n)) 10 )

listaHasta :: Integer -> Integer
listaHasta n | n == 2 = 2
             | n > 2 && esPrimo n == True = n + listaHasta (n-1)
             | n > 2 && esPrimo n == False = listaHasta (n-1)

otraLista :: Integer -> Integer -> Integer -> Bool
otraLista d e h | d == h = False
              | e<h && d<h && e + d > h = otraLista (e+1) (e+1) h
              | e<h && d<h && esPrimo d == False && esPrimo e == False && e + d <= h = otraLista (e+1) (e+1) h
              | esPrimo d == True && esPrimo e == True && e + d == h = True
              | esPrimo d == True && esPrimo e == True && e + d < h = otraLista (d+1) e h
              | esPrimo d == False && esPrimo e == True && e + d <= h = otraLista (d+1) e h

esSumaDeDosPrimos :: Integer -> Bool
esSumaDeDosPrimos n = otraLista 2 2 n
