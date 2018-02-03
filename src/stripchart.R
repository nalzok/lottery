#### plot strip chart ####

stripchart(x, method = 'stack', xlim=c(0, 100))


#### add labels (magic!) ####

rx <- round(x, 1)
urx <- unique(rx)
urx.len <- length(urx)
# modifier base
m <- rep(c(1, -1),
         times      = 1 + urx.len/2,
         length.out = urx.len)
text(x      = urx + m*1.5,
     y      = 1 + m*0.075,
     labels = urx,
     col    = 'blue',
     cex    = 0.8)
for (i in 1:length(urx)) {
  lines(x   = urx[i] + c(m[i], 0),
        y   = 1 + c(m[i]*0.05, 0),
        col = 'blue')
}


#### mark winner ####

lines(x=rep(avg, 2), y=c(0, 2), col='blue')
lines(x=rep(rslt, 2), y=c(0, 2))
points(x=wnr, y=0.95, pch=17, col='red')
