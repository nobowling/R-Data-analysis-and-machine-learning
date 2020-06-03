v <- c('pimpp1', 'pimppi', 'kyrpis', 'hilloviiva')
sort(v)

v <- 1:5

sapply(v, function(num, sum){num+sum}, sum = 1)
?sapply
install.packages('dplyr')
install.packages('nycflights13')

library(dplyr)
library(nycflights13)

flights <- head(nycflights13::flights)
head(flights)
?arrange()
