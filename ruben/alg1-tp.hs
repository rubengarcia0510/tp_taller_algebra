type Set a = [a]
type Usuario = (Integer, String) -- (id, nombre)
type Relacion = (Usuario, Usuario) -- usuarios que se relacionan
type Publicacion = (Usuario, String, Set Usuario) -- (usuario que publica, texto publicacion, likes)
type RedSocial = (Set Usuario, Set Relacion, Set Publicacion)

lista_usuarios :: [Usuario] -> [Usuario]
lista_usuarios a = [(5518,"Grassi Luca Karina"),(23919,"Scocozza Simon Nicolas"),(44819,"Ruiz Cortes Jeferson Osmeider"),(41718,"Estvez Santiago Toms"),(44713,"Balboa Guillermo Raul"),(18719,"Canedo Emiliano"),(20217,"Abate Nicols Bruno"),(24717,"Toro Julin Hernan"),(36517,"Chaves Jonatan Ignacio"),(48319,"De Vicenzo Nahuel Hernan"),(5019,"Akris Ramiro"),(45819,"Chab Kenaan Uriel"),(41719,"Segovia Diego Matas"),(35919,"Polverino Lorenzo"),(26419,"Ramos Pablo"),(36819,"Feldman Mateo Agustin"),(55516,"Gonzalez Pereira Maria Celeste"),(5919,"Fumagalli Teo"),(30019,"Rivarola Mariana Cecilia"),(13919,"Principe Acero Diana "),(37719,"Prez Del Cerro Catalina"),(43635,"Rijo Oswald Eduardo"),(36619,"Carnelutti Magurno Salvador"),(21719,"Meier Brian Jonathan"),(64407,"Garcia Ruben Dario"),(44919,"Valls Valentin Franco"),(47119,"Riveiro Martin Gabriel"),(5719,"Rodriguez Miguel"),(16919,"Itzcovitz Ryan"),(Condicion,"Mariano Pironio"),(34619,"Hermosilla Bez Agustn"),(57619,"Cantini Budden Sebastian"),(25719,"Seva Nicols Leonel"),(12319,"Martin Batista Ignacio"),(27219,"Maez Grondona Jess Ignacio"),(34419,"Bongiovanni Franco Alessio"),(50519,"Rodrguez Calzada Braian Edgardo"),(45719,"Mendoza Lucas Emmanuel"),(22519,"Basualdo Camilo Alejandro"),(6119,"Wiszniewer Violeta"),(32519,"Burgos Pesqueira Maria Agustina"),(48719,"Ainchil Manuela"),(22919,"Cinquemani Maximiliano Emanuel"),(14819,"Bogliacino Felipe Alfredo"),(67618,"Bellazzi Franco"),(10819,"Salmun Daniel"),(28419,"Bulacio Granata Blas"),(47419,"Gilabert Juan Bautista"),(14119,"Tomasini Lucas Daniel"),(10219,"Almada Canosa Agustin Nicolas"),(42719,"Liendro Adolfo Benjamin"),(22219,"Zolezzi Mara Victoria"),(13619,"Herrero Francisco Jose"),(42419,"Miceli Juan Pablo"),(32319,"Oppenheim Abi Noam"),(24519,"Felder Andres"),(46919,"Grinspan Ian"),(10719,"Russo Guiot Gabriel Marcelo"),(44419,"Palladino Leonardo Victor"),(22419,"Martinez Abeldao Facundo"),(30019,"Rivarola Mariana Cecilia"),(79418,"Yguaneti Docampo Renny Jess"),(12219,"Coronel Christian Leonardo"),(30419,"Shimane Mariana Nicole"),(15919,"Villagra Tomas"),(22119,"Dorda Recalde Maria De Las Mercedes"),(26319,"Calla Martin Alejandro"),(24819,"Torsello Juan Manuel"),(22914,"Fantagossi Nicols Ezequiel"),(47519,"Carabajal Gonzalo"),(31019,"Yazlle Maximo"),(26119,"Guzmn Crdenas David Alejandro"),(74118,"Sarmiento Matas Federico"),(10919,"Pautasso Manuel"),(9519,"Rios Daniel Alberto"),(82218,"Pereira Cinthya Ayelen"),(12919,"Minino Suarez Eliana Mariel"),(5118,"Reinoso Julian"),(20919,"Borrelli Victoria"),(35519,"Loleo Saigos Belen"),(6219,"Bruno Patricio Damin"),(32919,"Ravaglia Santiago Matias"),(5619,"Bustos Gonzalo Martn"),(80917,"Aguilar Santiago"),(55019,"Gonzalez Bugtrup Facundo"),(51719,"Aranguren Venero Miguel Alejandro"),(49119,"Arranz Florek Yamila Iara"),(57718,"Gorosito Luciana"),(51019,"Gomez Nicols Rubn"),(7819,"Pez Mara Beln"),(41019,"Silva Fernandez Ignacio Tomas"),(3719,"Suaiter Federico Hernn"),(23019,"Fabian Florencia"),(56018,"Puglisi Sebastian Ignacio"),(26619,"Maspi Gian Agustn"),(13019,"Tambussi Juan Bautista"),(25919,"Bobzin Luca Victoria"),(51619,"Cristi Federico"),(42224643,"Pedro Alvarez Capdevila"),(28219,"Lavalle Cobo Ignacio"),(14519,"Volij Matias Ariel"),(29919,"Schiavinato Mauro Luis"),(35117,"Yulita Federico"),(36119,"Serna Joaqun Sebastin"),(6619,"Choclin Juana"),(41419,"Fiora Victoria Mara"),(31419,"Goria Julieta"),(22619,"Chanes Mauricio"),(2919,"Cmara Maximiliano Ariel"),(23117,"Greco Francisco"),(19019,"Zion Ezequiel Joaqun"),(20319,"Castro Russo Matias Nahuel"),(5819,"Saied Martin Yoel"),(45119,"Varani Victoria Antonella"),(32719,"Curti Tomas Agustin"),(17219,"Sovilj Marko Agustn"),(12019,"Cagnoni Speranza Sebastian Eduardo"),(35719,"Sobrino Ezequiel"),(37419,"Rodriguez Celma Guido"),(15219,"Jurez Guilln Sofa"),(13919,"Principe Acero Diana "),(37719,"Prez Del Cerro Catalina"),(20119,"Vicharra Sanchez Dylan Steven"),(33419,"Petre Federico Julin"),(29119,"Lpez Marcelo Fabin"),(34819,"Demarco Franco Daniel"),(44418,"Aranda Daiana Ailen"),(51319,"Aramayo Mara Paola"),(55319,"Pardo Cristopher Jonas"),(43319,"Acha Francisco"),(5319,"Rodriguez Ruiz Santiago"),(27019,"Palacio Octavio"),(49819,"Muiz Laureano"),(35219,"Parra Corti Mara Beln"),(19319,"Turco Dario Juan Nicolas"),(8419,"Tarsia Luciano Fabrizio"),(48919,"Duleba Mendoza Marcos Angel Alexander"),(10119,"Prez Herrero Alejo Daniel"),(9218,"Galeano Juan Ignacio"),(92328555,"Carlos Zerda"),(8319,"Capelo Gianluca"),(9019,"Filgueira Julin Gabriel"),(52918,"Torres Dario Sebastian"),(28719,"Goy Agustin"),(9119,"Iturriza Ramirez Joaqun"),(47719,"Spisso Nicols Ariel"),(18319,"Belgorodsky Martin Yoel"),(9719,"Dondo Ignacio"),(56419,"Perez Labra Jean Lucas"),(43919,"Coceres Ezequiel Oscar"),(50219,"Repollo Nicolas"),(40519,"Jaimes Leandro Julin"),(46019,"Pajor Ivo"),(14619,"Mischener Forte Uriel Ivan"),(57119,"Marino Zoe"),(11319,"Sujovolsky Toms"),(26519,"Wappner Daniel"),(11119,"Ernst Erik"),(40419,"La Ruffa Franco"),(55419,"Ferraro Lucas Francisco"),(4812,"Van Der Velde Guido Gustavo"),(9009,"Ramirez Leandro Jess"),(52419,"Lopetrone Gianfranco"),(45919,"Baril Tomas Adolfo"),(46419,"Kuktosky Fernandez Matheo Andres"),(29319,"Lerer Joaqun Matas"),(94805,"Alvis Csar"),(82011,"Mattes Francisco"),(36919,"Ilundayn Ivan Antiel"),(62511,"Desinano Nicolas"),(52818,"Klein Pablo Andrs"),(23319,"Bolaos Cecilia Micaela"),(38219,"Kunik Alejandro Yuri"),(23119,"Rodriguez Pardina Laura"),(25819,"Varela Santiago Daniel"),(32119,"Garca Micaela")]

-- Funciones basicas

usuarios :: RedSocial -> Set Usuario
usuarios (us, _, _) = us

relaciones :: RedSocial -> Set Relacion
relaciones (_, rs, _) = rs

publicaciones :: RedSocial -> Set Publicacion
publicaciones (_, _, ps) = ps

idDeUsuario :: Usuario -> Integer
idDeUsuario (id, _) = id

nombreDeUsuario :: Usuario -> String
nombreDeUsuario (_, nombre) = nombre

usuarioDePublicacion :: Publicacion -> Usuario
usuarioDePublicacion (u, _, _) = u

likesDePublicacion :: Publicacion -> Set Usuario
likesDePublicacion (_, _, us) = us

-- Ejercicios

-- Dada una red social retorna un conjunto con los nombres de todos los usuarios.
nombresDeUsuarios :: RedSocial -> Set String
nombresDeUsuarios = undefined

-- Dada una red social y un usuario retorna el conjunto de amigos del mismo
amigosDe :: RedSocial -> Usuario -> Set Usuario
amigosDe = undefined

-- Dada una red social y un usuario retorna la cantidad de amigos de dicho usuario
cantidadDeAmigos :: RedSocial -> Usuario -> Int
cantidadDeAmigos = undefined

-- Dada una red social retorna el usuario con mas amigos. De existir más de uno devuelve cualquiera de ellos.
usuarioConMasAmigos :: RedSocial -> Usuario
usuarioConMasAmigos = undefined

-- Dada una red social retorna True si algún usuario tiene más de un millón de amigos
estaRobertoCarlos :: RedSocial -> Bool
estaRobertoCarlos = undefined

-- Dada una red social y un usuario retorna el conjunto de publicaciones del mismo.
publicacionesDe :: RedSocial -> Usuario -> Set Publicacion
publicacionesDe = undefined

-- Dada una red social y un usuario retorna el conjunto de publicaciones a las que el usuario les dió like.
publicacionesQueLeGustanA :: RedSocial -> Usuario -> Set Publicacion
publicacionesQueLeGustanA = undefined

-- Dada una red social y dos usuarios indica si les gustan las mismas publicaciones
lesGustanLasMismasPublicaciones :: RedSocial -> Usuario -> Usuario -> Bool
lesGustanLasMismasPublicaciones = undefined

-- Dada una red social y un usuario u, indica si existe un usuario que le puso like a todas las publicaciones de u.
tieneUnSeguidorFiel :: RedSocial -> Usuario -> Bool
tieneUnSeguidorFiel = undefined

-- Dada una red social y dos usuarios, indica si existe una secuencia de usuarios relacionados para llegar del primero al segundo.
existeSecuenciaDeAmigos :: RedSocial -> Usuario -> Usuario -> Bool
existeSecuenciaDeAmigos = undefined
