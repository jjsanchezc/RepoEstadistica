
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
- Binomial 
~~~
dbinom(x,n,p) #densidad
pbinom(x,n,p) #probabilidad
~~~
- Poisson
~~~
dpois()
~~~












# BORRAR LA PARTE DE LA CLASE, NO TENIA EL CUADERNO
## CLASE 1 SEPTIEMBRE ESTADISTICA GENERAL
- distribuciones
  - Me ayuda a modelar el grupo de entradas que recibe el problema
  - Tipos de distribicuiones:
    - Discretas
      - Uniforme
      - Binominal
      - Poisson 
      - Otras
    - Continua 
      - Uniforme 
      - Nominal
      - Exponencial
      - otras
--- 
