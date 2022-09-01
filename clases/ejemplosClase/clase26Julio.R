D=c(0.74,6.47,1.90,2.69,0.75,0.32,9.9,1.77,2.74,1.96,1.66,0.70,2.42,0.54,3.36,3.59,0.37,1.09,8.32,4.06,4.55,0.76,2.03,5.70,12.48)
length(D)
sort(D)
mean(D)
hist(D)
sd(D)
boxplot(D,horizontal = TRUE)
summary(D) 

library (fdth)

dist <- fdt(D,breaks= "Sturges")
dist$table

