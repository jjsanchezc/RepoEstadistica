obs <- c(27.3,27.9,32.9,35.2,44.9,39.9,30,29.7,28.5,32,37.6)
ength(obs)
mean(obs) #promedio
obs-mean(obs)
(obs-mean(obs))^2
var(obs)  #varianza

sd(obs) #desviacion estandar
summary(obs)

boxplot(obs, horizontal=TRUE)
barplot(obs)
es=mean(obs)-sd(obs)
ei=mean(obs)+sd(obs)


#funciones 
#que le meta el numero  y que este me retorne el percentil

suma=function(){
  
  readline('por favor ingrese el percentil de los datos que quiere modificar')
  
  
}
duration = faithful$eruptions
quantile(duration,obs)
