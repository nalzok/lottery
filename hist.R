#### plot histogram ####

hist(x, breaks = seq(0, 100, 0.01))


#### add labels (magic!) ####

rx <- round(x, 1)
urx <- unique(rx)
urx.len <- length(urx)
# modifier base
m <- rep(c(1, -1),
         times      = 1+urx.len/2,
         length.out = urx.len)
text(x      = urx+m*1.5,
     y      = 0.1+m*0.05,
     labels = urx,
     col    = 'blue',
     cex    = 0.8)
for (i in 1:length(urx)) {
  lines(x   = urx[i] + c(m[i]*0.7, 0),
        y   = rep(0.1 + m[i]*0.05, 2),
        col = 'blue')
}


#### mark winner ####

points(x=avg, y=-0.03, pch=17, col='blue')
points(x=rslt, y=-0.03, pch=17)
points(x=wnr, y=-0.03, pch=17, col='red')
