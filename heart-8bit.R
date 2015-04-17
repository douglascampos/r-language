xmin <- -5
xmax <- 10
n <- 1e3
xs<-seq(xmin,xmax,length=n)
ys<-seq(xmin,xmax,length=n)

f = function(x, y) (x^2+0.7*y^2-1)^3 - x^2*y^3
zs <- outer(xs,ys,FUN=f)

h <- contourLines(xs,ys,zs,levels=0)
library(txtplot)
with(h[[1]], txtplot(x, y))
