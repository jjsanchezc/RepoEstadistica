# CLASE 1 SEPTIEMBRE ESTADISTICA GENERAL
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
# NOTAS DE CLASE DE TELEMATICA, PASAR AL CUADERNO, ES QUE NO ME DIO PARA COPIAR
## CLASE TEMPORAL 30 AGOSTO 
- Interprocess Comunication 
  + mecanismo que permite la comunicación entre proceoss que se ejecutan sobre la misma maquina
  + la comunicación puede ser sincronica o asincronica
- cliente/servidor
  + iente envia una petición y el server envía una respuesta 
  + El servidor puede desarrollar una tarea simple o compleja de acuerdo a la peticion
  + tipos:
     - secuencial
        + no tiene capacidad de operar de forma concurrente 
     - concurrente
        + pude atender difetentes peticiones de forma simultanea
- Programación en Red 
  + ¿como interactuan los programadores con los protocolos en red?
    - a traves de las API Sockets
     
- ¿Que es un Socket?
  + interface entre la capa de aplicación y la capa de transporte
  + es una abstracción para un punto de comunicación por la cual una aplicación puede enviar y recibir datos
  + se necesita una infraestructura de comunicaciones pre-existentes para que se puedan comunicar dos procesos a traves de un socket
  + ¿como funcionan los sockets?
    - los clientes se conectan al servidor, intercambian información y luego se desconectan 
    -
--------------  
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
