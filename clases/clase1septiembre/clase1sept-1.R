install.packages('extraDistr')
library(extraDistr)

datos=sample(c('c','s'),size=100,replace=TRUE)

##distribucion uniforme
rdunif(1000,3,200)
##distribucion binomial
rbinom(50,100,0.5)
##poisson
rpois(100,7/60)
hist(rpois(100,7))
