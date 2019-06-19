import Clase5

mcd :: Integer -> Integer -> Integer
mcd a 0 = a
mcd a b = mcd b (mod a b)

mcd2 :: Integer -> Integer -> Integer
mcd2 a 0 = a
mcd2 _ 1 = 1
mcd2 1 _ = 1
mcd2 a b | mindiva == mindivb = mindiva * mcd2 (div a mindiva ) (div b mindivb)
         | mindiva < mindivb = mcd2 (div a mindiva) b
         | mindiva > mindivb = mcd2 a (div b mindivb)
         where mindiva = menorDivisor a
               mindivb = menorDivisor b

emcd :: Integer -> Integer -> (Integer,Integer,Integer)
emcd a 0 = (a,1,0)
emcd a b = (g,s,t)
           where (g,s1,t1) = emcd b (mod a b)
                 s = t1
                 t = s1 - t1 * q
                 q = div a b

tieneSolucion :: Integer -> Integer -> Integer -> Bool
tieneSolucion a b m | mod b (mcd a m) == 0 = True
                    | otherwise = False

solucionParticular :: Integer -> Integer -> Integer -> Integer
solucionParticular a b m | tieneSolucion a b m = s * div b g
                           where (g,s,_) = emcd a m

solucionGeneral :: Integer -> Integer -> Integer -> Integer
solucionGeneral a b m | tieneSolucion a b m = (s * div b g, div m g)
                           where (g,s,_) = emcd a m
