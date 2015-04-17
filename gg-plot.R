library(ggplot2)

dat <- data.frame(x=seq(0, 2*pi, length.out=100))
cardioid <- function(x, a=1)a*(1-cos(x))
ggplot(dat, aes(x=x)) + stat_function(fun=cardioid) + coord_polar()
