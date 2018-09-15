# Curso de Lenguajes para Inteligencia Artificial
# R
########################################################
#
# Link a los slides: 
# http://bit.ly/EMI_CursoR
#
# Nathaly Alarcón  --- me@nathalyalarcon.com
#################################################


# ===============
# Documentación: 
# ===============

# Obtener ayuda sobre alguna función en específico:
# ?nombre_de_la_funcion
?plot

# Si no recordamos exactamente el nombre de la función:
# help.search("nombre aprox de la función")
help.search("plot") 

# Si necesitamos saber, en qué paquete se encuentra la función..
# find("nombre_funcion")
find("curve")

# =========
# Working Directory
# =========
getwd()
# setwd()
# Listar objetos de la sesión actual
ls()

# =========
# Libraries
# =========

# Invocar a una librería
# library(nombre_de_librería)
library(lattice)

# Instalar una librería ó paquete
# install.packages("nombre_paquete")


# =========
# Entorno
# =========

# Creamos una variable de ejemplo:
var_test = "Valor de ejemplo"

# Variables creadas en el entorno
objects()

# Paquetes invocados en la sesión
search()

# Remover variables
# rm(name_var1, name_var2, ...)
rm(var_test)
# verifica con objects(), que la variable no se liste en el entorno.
# Si queremos borrar todas las variables del environment rm(list=ls())

# ========================
# Operaciones Matemáticas
# ========================

log(22)

10 + 12 + 4 + 2

10 + 22 + (-1)*3

# El entero menor
floor(8.2)

# El entero mayor
ceiling(4.3)

# Redondeo con números negativos
# -5 -4 -3 -2 -1 0 1 2 3 4 5 

floor(-3.3)
floor(3.3)

ceiling(-4.2)
ceiling(4.2)

# Truncando a la parte entera
trunc(10.3)

round(3.212412 , 2)

pi

# Divisiones
# Cociente 
17 %/% 5
# Resto / Módulo
17 %% 5

88 %% 2 == 0


# ========================
# Variables
# ========================

x <- 4
7 -> y

# Strings

a <- "Women in"
b <- "Data Science"
paste(a,b)

# Datetimes
y <- strptime("04/09/2018", format= "%d/%m/%Y" )
weekdays(y)
y

other.dates <- c("1jan99", "2jan05", "31mar04", "30jul05")
strptime(other.dates, "%d%b%y")

# ========================
# Vectores
# ========================

vector1 <- c(4,5,6,2,3,4,6,2)

vector2 <- c(1:10)
# Veamos el tipo de dato del vector1
class(vector1)
x <- c(0.5, 0.6)      ## numeric
x <- c(TRUE, FALSE)   ## Logical
x <- c(T, F)          ## Logical
x <- c("a", "b", "c") ## character
x <- 9:29             ## integer
x <- c(1+0i, 2+4i)    ## complex# Secuencias
?seq
seq1 <- seq(from=10, to=40, by=2)
seq1
seq2 <- seq(1, 2, 0.001)
class(seq2)
seq3 <- seq(from=1992, by=2, length = 6)

# Repeticiones
rep1 <- rep(4,9)
rep2 <- rep(c(1,2,3,4), 3)
rep3 <- rep(1:4, each=2, times=4)
rep4 <- rep(c("rojo", "amarillo", "verde"), times = c(2,3,2))


for (i in rep2) print(i^2)


# ========================
# Factores
# ========================

# Usualmente almacenaremos valores categóricos en factores
estados <- factor(c("bueno", "malo", "regular", "malo"))
# Verificamos el tipo de dato
class(estados)
# Cuántos valores únicos tenemos ?
levels(estados)
attributes(estados)
# Preguntamos si es factor
is.factor(estados)
is.factor(vector1)
# Convertimos un vector a factor
factor_vector1 <- as.factor(vector1)
# Cuántos valores únicos tiene?
nlevels(factor_vector1)

# Convertir valores de factores/clases/categorías a valores numéricos
unclass(estados)



# ========================
# Operaciones Lógicas
# ========================
seq_1 <- c(1:10)
# Qué elementos son menores a 5 ?
seq_1 < 5
# Son todos los elementos mayores a 5?
all(seq_1 > 5)
# Son todos los elementos mayores a 0?
all(seq_1 > 0)
# Es algun elemento mayor a 20 ?
any(seq_1 > 20)
# Es algun elemento mayor a 0 ?
any(seq_1 > 0)
# Cuántos elementos son mayores a 6 ?
sum(seq_1 > 6)


# ========================
# Transformando tipos
# ========================
factorBoolean <- c(TRUE, FALSE, TRUE, TRUE)
is.logical(factorBoolean)
is.numeric(factorBoolean)
factorNumeric <- as.numeric(factorBoolean)
is.numeric(factorNumeric)


# ========================
# Funciones
# ========================
sumaVector <- function(x){
  if(!is.numeric(x)) stop("Los valores deben ser numéricos")
  sum(x)
}

sumaVector(c(3,4,"A"))

sumaVector(c(3,4,3))

# ========================
# No son números
# ========================
0/0
Inf - Inf
#NaN = Not a Number

# ========================
# Missing Values
# ========================

edades <- c(23,24,NA,31)

mean(edades)

is.na(edades)

# Remover los NAs
clean_edades <- edades[!is.na(edades)]

# Podemos hacer uso de na.rm para ignorar los missing values
mean(edades, na.rm = T)

# Identifiquemos la posicion de los datos que son nulos
which(is.na(edades))

## Notaron que en R , la primera posición es 1  y no 0 ???? :) 
# Vamos a llenar los NAs con 0
edades[is.na(edades)] <- 0

#Operaciones con vectores
edades + 1
edades * 2

# ========================
# Vectores
# ========================

max(edades)
min(edades)
quantile(edades)

# Vamos a pedir valores por teclado, introduce al menos 10 edades/valores
edades_live <- scan()
length(edades_live)
#Accedamos a la tercera edad de edades_live
edades_live[3]
# Edades 3,4,6
edades_live[c(3,4,6)]

# Edades sin el primer elemento
edades_live[-1]

# Asignemos nombres al vector de edades
edades
names(edades) <- c('Nicol', 'Rodrigo', 'Nathaly', 'Soledad')
edades
class(edades)

# Vamos a ordenar el vector 
sort(edades)
# En orden reverso
rev(sort(edades))

# Quién tiene la mayor edad? y en Qué posición se encuentra
which.max(edades)

# El rango de edades
range(edades)

#Tenemos el rango de edades de un curso de primaria
edades_curso <- c(10,11,10,9,11,10,8,11,11,10,11,9)

# Cuántas edades tenemos y de qué forma estån distribuídas?
table(edades_curso)



#####################
# R Datasets 
#####################

# Veamos la lista de datasets disponibles
data()
women
iris
attach(iris)
# Qué columnas tiene ?
names(iris)
# Número de ejemplos
nrow(iris)
# Número de columnas
ncol(iris)
# Exploramos los datos
head(iris)
tail(iris)
# Acceso a las columnas
iris$Species

# Distribución de los datos
table(iris$Species)

# Cuál es la media del largo del Sépalo por Especie de Lirio ?
tapply(iris$Sepal.Length,iris$Species,mean)
tapply(iris$Sepal.Length,iris$Species,min)
tapply(iris$Sepal.Length,iris$Species,max, na.rm = TRUE)


# Media por especie, del largo y ancho del pétalo a la vez
aggregate(iris$Petal.Length ~ iris$Species, iris, mean)
aggregate(cbind(iris$Petal.Length , iris$Petal.Width)~ iris$Species, iris, mean)

# Valores mínimos del largo del pétalo y del sépalo por ejemplo
# Parallel min pmin y Parallel max pmax
pmin(iris$Sepal.Length, iris$Petal.Length)

# Basado en el rango range(min and max valor de la columna)
iRanks <- rank(iris$Sepal.Length) 
# Valore ordenados de manera ascendente
iSorted <- sort(iris$Sepal.Length)
# La posición a la que cada elemento pertence
iOrdered <- order(iris$Sepal.Length)


descIris <- data.frame(iris$Sepal.Length, iRanks, iSorted, iOrdered)

# Los lirios ordenados ascendentemente, por Sepal.Length
iris$Species[iOrdered]
iris$Species[rev(iOrdered)]

# Unique values
unique(iris$Species)
# Duplicados, las primeras ocurrencias no lo son
duplicated(iris$Species)
duplicated(iris$Sepal.Length)


###########
# Conjuntos
############

setNamesA <- c("perro", "gato", "leon")
setNamesB <- c("zorro", "loro", "perro", "mono")


union(setNamesA, setNamesB)
intersect(setNamesA, setNamesB)
setdiff(setNamesA, setNamesB)
setdiff(setNamesB, setNamesA)

# Elementos de A que están en B
setNamesA %in% setNamesB
setNamesB %in% setNamesA


##################
# Matrices
##################
# Los elementos son del mismo tipo de dato siempre
a<-matrix(1:12,nrow=3,byrow=TRUE)
a
# Vamos a acceder a la matriz, por los índices
a[2,3]
a[,3]
a[2,]
a[2,c(2,3)]
a[c(1,2),c(2,3)]

a<-matrix(1:12,nrow=3,byrow=FALSE)
a

rownames(a)<-c("A","B","C")
a

colnames(a)<-c("a","b","x","y")
a

# cbind y rbind
x <- 1:3
y <- 10:12
cbind(x, y)
rbind(x, y)


##################
# Listas
##################
# Permiten almacenar datos de distintos tipos y longitudes
A<-c(31,32,40)
S<-as.factor(c("F","M","M","F"))
People<-list(age=A,sex=S)
People

#Acceder a los elementos de la lista
People$age
People[[1]]
People[[2]]


##################
# Dataframes
##################
# Son matrices generalizadas que como columnas pueden tener distintos tipos de datos.

Patients <- data.frame(age=c(31,32,40,50),sex=S)
Patients

Patients[1,]
Patients[2,]

Patients[,2]

# Insulina dataframe
age <- c(50,62,60,40,48,47,57,70,48,67)
insulin <- c(16.5,10.8,32.3,19.3,14.2,11.3,
             15.5,15.8,16.2,11.2)
insulina <- data.frame(age, insulin)

plot(insulina$age, insulina$insulin)


#####################
# Importando datos
#####################
# Descarguemos un archivo csv 
# https://www.kaggle.com/c/titanic/data

titanic <- read.csv('all/train.csv', header = TRUE, sep = "," )
dim(titanic)
nrow(titanic)
ncol(titanic)
colnames(titanic)
summary(titanic)
str(titanic)
#my_object[row, col]
# Veamos a la observación #3
titanic[3,]
# Veamos solo la columna que indica si los pasajeros del titanic sobrevivieron
titanic[,2]
titanic$Survived
table(titanic$Survived)

# Menores a 17 anos, serán niños, creamos una nueva columna en el dataset
titanic$edadCat <- 'adulto'
titanic$edadCat <- ifelse(titanic$Age < 17, 'niño', 'adulto')

# Vamos a crear 2 data frames con las 10 primeras letras
ids <- 1:10
letras <- letters[1:10]
df1 <- data.frame(ids, letras)
df1

letrasMayus <- LETTERS[1:10]
df2 <- data.frame(ids, letrasMayus)
df2

# Ahora los vamos a unir
letrasAll <- merge(df1, df2, by = 'ids')
letrasAll



# Vamos a escribir nuestro dataset de insulina a un csv
write.csv(insulina, "insulina.csv")



# Funciones Estadísticas de tendencia central
mean(titanic$Age, na.rm = T)
median(titanic$Age, na.rm = T)


# Funciones Estadísticas de dispersión
var(titanic$Age, na.rm = T)
sd(titanic$Age, na.rm = T)
min(titanic$Age, na.rm = T)
max(titanic$Age, na.rm = T)
range(titanic$Age, na.rm = T)
quantile(titanic$Age, na.rm = T)

##########
# Apply
##########
# vamos a obtener la media de todas las columnas del dataset de la insulina
apply(insulina, 2, mean)
apply(insulina, 2, mean, na.rm=T)

# vamos a dividir todos los valores /2
apply(insulina, 2, function(x) {x/2})

# rowSums 
apply(insulina,1,sum)
# rowMeans
apply(insulina,1,mean)
# colSums  
apply(insulina,2,sum)
# colMeans 
apply(insulina,2,mean)


##########
# Demos
##########
demo(graphics)

demo(persp)




