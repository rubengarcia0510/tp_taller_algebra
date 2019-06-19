import Clase10

type Monomio=(Float,Integer)

--division :: Polinomio -> Polinomio -> (Polinomio, Polinomio)
--division p1 p2

resta :: Polinomio -> Polinomio -> Polinomio
resta p q = suma p (productoPorEscalar (-1) q)

primerCociente :: Polinomio -> Polinomio -> Monomio
primerCociente p q | grado p >= grado q =((head p/head q),grado p - grado q)

primerResto :: Polinomio -> Polinomio -> Polinomio
--primerResto (p:ps) (q:qs) = resta (p:ps) productoPorMonomio ((p/q),(grado (p:ps) - grado (q:qs))

primerResto p q = resta p (productoPorMonomio (primerCociente p q) q)

sumarMonomio :: Monomio -> Polinomio -> Polinomio
sumarMonomio m [] = productoPorMonomio m [1]
sumarMonomio (a,n) (p:ps) | grado (p:ps) > n = p:sumarMonomio (a,n) ps
                          | grado (p:ps) < n = a:sumarMonomio (0,(n-1)) (p:ps)
                          | grado (p:ps) == n = (a+p):ps

division :: Polinomio -> Polinomio -> (Polinomio,Polinomio)
division [] (p:ps) = ([],[])
division p q | grado p < grado q = ([],q)
             | otherwise = (sumarMonomio (primerCociente p q) cp,rp)
              where (cp,rp) = division (primerResto p q) q


hacerMonico :: Polinomio -> Polinomio
hacerMonico p | p /= [] = productoPorEscalar (1/head p) p

mcdP :: Polinomio -> Polinomio -> Polinomio
mcdP p [] = p
mdcP p q = mcdP q (snd (division p q))
--mcdP p q = hacerMonico (mdcP p q)

--emcd :: Integer -> Integer -> (Integer,Integer,Integer)
--emcd a 0 = (a,1,0)
--emcd a b = (g,s,t)
--           where (g,s1,t1) = emcd b (mod a b)

multiplicidad :: Float -> Polinomio -> Integer
multiplicidad f [] = 0
multiplicidad f (p:ps) | (division p [1-f]) == ([],[]) = 1 + multiplicidad ps
                       | otherwise = multiplicidad ps

--multiplicidad f p | r /= [] = 0
--                    | r == [] 1 + multiplicidad f q
--                    where r=snd (division p [1-a])
--                          q=fst (division p [1-a])

raicesMultiples :: Polinomio -> Bool
raicesMultiples p = fst (mcdP p (derivada p)) /= [1]
