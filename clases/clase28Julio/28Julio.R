table(salon$Carrera)
table(salon$Semestre)
table(salon$Edad)

#frcuencia de cada uno de los datos
table(salon$Carrera)/dim(salon)[1] #ya que es con respecto a la columna1
table(salon$Semestre)/dim(salon)[1]
table(salon$Edad)/dim(salon)[1]


#diagramas
barplot(table(salon$Carrera)) #diagrama de barras
pie(table(salon$Carrera)) #diagrama de tortas
boxplot(table(salon$Carrera),horizontal=TRUE) #BOXPLOT
hist(salon$Edad) #histograma 

#media y mediana
mean(salon$Edad) #edad promedio,media del salon 
median(salon$Edad) #mediana de la edad

#el codigo que hizo el profe de la frecuencia 

### TALLER 1
## punto1
cualitativas
  day=ordinal
  date=ordinal
  operator=nominal
  branch=nominal
  driver=nominal
cuantitativas
  time=continua
  temperature= continua
  bill=continua
  pizzas=discreta
  free_wine=discreta
  got_wine=discreta
  discount_custumer=discreta

##punto2
#absoluta
table(pizza$day)
table(pizza$date)
table(pizza$operator)
table(pizza$branch)
table(pizza$driver)
#relativa
table(pizza$day)/dim(pizza)[1]
table(pizza$date)/dim(pizza)[1]
table(pizza$operator)/dim(pizza)[1]
table(pizza$branch)/dim(pizza)[1]
table(pizza$driver)/dim(pizza)[1]
#Gráficas
barplot(table(pizza$day))
pie(table(pizza$date))
barplot(table(pizza$operator))
barplot(table(pizza$branch))
barplot(table(pizza$driver))

##punto3
filtro<-subset(pizza,pizza$free_wine>0)
datos_filtrados <- c(filtro[10],filtro[6])
table(datos_filtrados) #frecuencia absoluta
table(datos_filtrados$driver)/length(datos_filtrados$free_wine) #frecuencia relativa
barplot(table(datos_filtrados))

##punto4


