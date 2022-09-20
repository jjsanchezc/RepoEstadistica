
# RepoEstadistica
En este repositorio voy a guardar un .md con cada metodo, para no tener que buscar en cada archivo R

## Metodos de Estadistica
- Promedio 
~~~
mean()
~~~
- Histograma
~~~
hist()
~~~
- BoxPlot
~~~
boxplot()
boxplot(,horizontal=TRUE)
~~~
- Varianza
~~~
var()
~~~

### Distribuciones Discretas
~~~
dxxx(x, ...)  # Función de masa de probabilidad, f(x)
pxxx(q, ...)  # Función de distribución acumulada hasta q, F(x)
qxxx(p, ...)  # Cuantil para el cual P(X <= q) = p
rxxx(n, ...)  # Generador de números aleatorios.
~~~
~~~
binom     # Binomial
geo       # Geométrica
nbinom    # Binomial negativa
hyper     # Hipergeométrica
pois      # Poisson
multinom  # Multinomial
~~~

### Distribuciones Continuas
~~~
dxxx(x, ...)  # Función de densidad de probabilidad, f(x)
pxxx(q, ...)  # Función de distribución acumulada hasta q, F(x)
qxxx(p, ...)  # Cuantil para el cual P(X <= q) = p
rxxx(n, ...)  # Generador de números aleatorios.
~~~
~~~
beta     # Beta
cauchy   # Cauchy
chisq    # Chi-cuadrada
exp      # Exponencial
f        # F
gamma    # Gama
lnorm    # log-normal
norm     # normal
t        # t-student
unif     # Uniforme
weibull  # Weibull
~~~

Ejemplos:
~~~
#si no me dan la x no puedo usar la pxxx
qnorm(0.45,40,6)
~~~
# NOTA:
- Los parametros de cada funcion aparecen en rstudio cuando abrimos los parentesis, si no sale hacer el ?xxx (siendo xxx el comando que se quiere buscar la info)
- Exponencial: si me piden algo con 'cuando x sea igual a algun numero' siempre va a ser =0 ya que es una función continua
