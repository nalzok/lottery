#### read data ####

setwd('/Users/nalzok/Projects/R/Playground')
data <- read.table('data.txt')
x <- sort(data$V1)


#### find winner ####

# function courtest of https://stackoverflow.com/a/48577559
# this still seems inaccurate, but... please just ignore it!
get.nearest <- function(vec, sca, tol = .Machine$double.eps) {
  dist <- abs(vec - sca)
  min <- min(dist)
  idx <- which(abs(dist - min) < tol)
  if (length(idx) == 1L) vec[idx] else as(NA, class(vec))
}
avg <- mean(x)
rslt <- avg * 2/3
wnr <- get.nearest(x, rslt)
if (is.na(wnr)) {
  stop('Stopping: multiple winners')
}


#### data visualization ####

source('hist.R')
source('stripchart.R')
