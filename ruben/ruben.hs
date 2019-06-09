import System.IO

main = do
    contents <- readFile "lista.txt"
    words putStr contents
