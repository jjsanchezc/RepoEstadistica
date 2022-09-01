#punto 1
trata<-read.csv("~/ing.sistemas/SEMESTRE6/EstadisticaGeneral/laboratorios/laboratorio1/tratamiento.csv")

#punto 2
menor= subset(trata,trata$Edad <30)
mayor=subset(trata,trata$Edad>30)

#punto3

##Edad: Cuantitativa Discreta
##resultado: Cualitativa nominal
##droga: Cualitativa nominal
##rango_edad: Cualitativa Nominal

a=summary(trata$Edad)
a
