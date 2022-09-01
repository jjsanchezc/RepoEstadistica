#clase 9 de agosto 

aguacates=aguacates2017
aguacates

#tabla que regresa todo lo que se vendió en cada mes
ventas_grp=aguacates2017 %>% group_by(Mes) %>%
              summarise(totales=sum(`Ventas totales`))

ventas_grp
median(ventas_grp$totales)
