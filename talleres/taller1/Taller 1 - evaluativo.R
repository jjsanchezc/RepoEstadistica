library(dplyr)
library(fdth)
# Se importa información
data <- read.csv("./UDoc/Semestre6/Estadistica/Deserción_Y_Rendimiento_Empleados.csv", sep=";")
# 2
feq_age = fdt(data$Age, breaks="Sturges")
feq_education_rf = table(data$Education)/length(data$Education)
feq_monthly_income = fdt(data$MonthlyIncome, breaks="Sturges")
percentil_84_age = percentil(84,data$Age)
percentil_97_5_age = percentil(97.5,data$Age)
percentil_84_monthly_income = percentil(84,data$MonthlyIncome)
percentil_97_5_monthly_income = percentil(97.5,data$MonthlyIncome)

### Percentiles chevichev

# Media de age y mothly_income 
media_age = mean(data$Age)
media_monthly_income = mean(data$MonthlyIncome)
# Desviación age y mothly_income 
desv_age = sd(data$Age)
desv_monthly_income = sd(data$MonthlyIncome)

percentil_75_age_inf = media_age-2*desv_age
percentil_75_age_sup = media_age+2*desv_age
percentil_88_age_inf =  media_age-3*desv_age
percentil_88_age_sup = media_age+3*desv_age
percentil_75_monthly_income_inf = media_monthly_income-2*desv_monthly_income
percentil_75_monthly_income_sup = media_monthly_income+2*desv_monthly_income
percentil_88_monthly_income_inf = media_monthly_income-3*desv_monthly_income
percentil_88_monthly_income_sup = media_monthly_income+3*desv_monthly_income

hist(data$MonthlyIncome, main = "Histograma de MonthlyIncome", xlab = "Monthly Income") ## Se grafica para revisar caso extremo (percentiles negativos)

## Punto 3

boxplot(data$MonthlyIncome, horizontal = TRUE, main = "MonthlyIncome con datos extremos")

k = 10

percentil_99_monthly_income_sup = media_monthly_income+10*desv_monthly_income

# Q3 + 1.5*(Q3-Q1) = Extremo superior
quantile(data$MonthlyIncome, 0.75)+1.5*(quantile(data$MonthlyIncome, 0.75)-quantile(data$MonthlyIncome, 0.25))
nrow(data[data$MonthlyIncome > 16581,])

boxplot(data[data$MonthlyIncome<=16581,]$MonthlyIncome, horizontal = TRUE, main = "MonthlyIncome sin datos extremos")

summary(data$MonthlyIncome) # Sin corte
summary(data[data$MonthlyIncome<=16581,]$MonthlyIncome) # Con corte


# Tabla de frecuencias con corte
feq_monthly_income_corte = fdt(data[data$MonthlyIncome<=16581,]$MonthlyIncome, breaks="Sturges")


## Punto 4 
t1 = table(data$JobRole) ## Buscamos cuales tienen mayor frecuencia (Sales executive
#Research Scientist, Laboratory Technician)


hist(data[data$JobRole == "Sales Executive" & data$MonthlyIncome >
            2600 & data$MonthlyIncome < 7400,,]$MonthlyIncome, density = 110, )

hist(data[data$JobRole == "Research Scientist",]$MonthlyIncome)
hist(data[data$JobRole == "Laboratory Technician",]$MonthlyIncome)

t2 = table(data[data$MonthlyIncome > 2600 & data$MonthlyIncome < 7400,]$JobRole)
t3 = table(data[data$MonthlyIncome > 9000,]$JobRole)

barplot(t1)
barplot(t2)

#*
#*a. Según t1 => Sales Executive: 326 Research Scientist: 292 Laboratory Technician: 259
#*b. Según t1 y t2 => Sales Executive: 212/326= 0.65 Research Scientist: 186/292= 0.62 y 
#*Laboratory Technician: 159/259= 0.61 => Según los datos Sales Executive tiene mayor proporción 
#*e. 
#**#




# Punto 5
desv_monthly_income_corte = sd(data[data$MonthlyIncome<=16581,]$MonthlyIncome)
media_monthly_income_corte = mean(data[data$MonthlyIncome<=16581,]$MonthlyIncome)
percentil_75_monthly_income_sup_corte = media_monthly_income_corte+2*desv_monthly_income_corte

porc_mayores_sin_corte = nrow(data[data$MonthlyIncome>percentil_75_monthly_income_sup,])/nrow(data)
porc_mayores_corte = nrow(data[data$MonthlyIncome>percentil_75_monthly_income_sup_corte,])/nrow(data[data$MonthlyIncome<=16581,])


percentil = function(n_percentil,data){
  ordered<-sort(data);
  perc = (n_percentil*(length(data)+1))/100;
  print(perc)
  if(perc >= length(data)){
    return(ordered[length(data)]);
  }else if(perc < 1){
    return(ordered[1]);
  }else{
    obt_perc = ordered[floor(perc)] + (perc-floor(perc)) *
      ((ordered[floor(perc)]+1)-ordered[floor(perc)]);
    return(obt_perc);
  }
}