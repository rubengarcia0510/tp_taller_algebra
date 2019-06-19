module Clase10
where

type Polinomio = [Float]


grado :: Polinomio -> Integer
grado [p] = 0
grado (p:ps) = 1 + grado ps

evaluar :: Polinomio -> Float -> Float
evaluar [] _ = 0
evaluar (p:ps) x = p * (x ^ (grado (p:ps))) + evaluar ps x

derivada :: Polinomio -> Polinomio
derivada [p] = []
derivada (p:ps) = [fromInteger n * p] ++ derivada ps
                  where n = grado (p:ps)

derivadaN :: Integer -> Polinomio -> Polinomio
derivadaN 1 ps = derivada ps
derivadaN n ps = derivada (derivadaN (n-1) ps)

suma :: Polinomio -> Polinomio -> Polinomio
suma [] _ = []
suma _ [] = []
suma (f:fs) (g:gs) | grado (f:fs) == grado (g:gs) = ((f+g) : suma fs gs)
                   | grado (f:fs) > grado (g:gs) = (f: suma fs (g:gs))
                   | grado (f:fs) < grado (g:gs) = (g: suma (f:fs) gs)

limpiar :: [Float] -> Polinomio
limpiar [] = []
limpiar (p:ps) | p == 0 = limpiar ps
               | otherwise = (p:ps)

productoPorEscalar :: Float -> Polinomio -> Polinomio
productoPorEscalar 0 _ = []
productoPorEscalar x [p] = [x*p]
productoPorEscalar x (p:ps) = (x*p):productoPorEscalar x ps

productoPorMonomio :: (Float, Integer) -> Polinomio -> Polinomio
productoPorMonomio (f,i) p = (productoPorEscalar f p) ++ ceros i

ceros :: Integer -> [Float]
ceros n | n == 0 = []
        | otherwise = 0 : ceros (n-1)

producto :: Polinomio -> Polinomio -> Polinomio
producto [] _ = [0]
producto (p:ps) os = suma (productoPorMonomio (p,grado(p:ps)) os) (producto ps os)

--Complejos
type Complejo = (Float, Float)
sumaComplejos :: Complejo -> Complejo -> Complejo
sumaComplejos (a,b) (d,c) = (a+d,b+c)

--productoComplejos :: Complejo -> Complejo -> Complejo
--productoComplejos (a,b) (c,d) = (a*c - b*d,a*d + b*c)

--potenciaComplejos :: Complejo -> Integer -> Complejo
--potenciaComplejos 0 _ = (1,0)
--potenciaComplejos n z = productoComplejos z potenciaComplejos (n-1) z
