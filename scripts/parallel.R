# load the parallel package
# nb this is included with a base installation of R
library(parallel)

# how many cores are available?
detectCores()

# create a list based on a discrete variable in the checkouts data
l <- split(checkouts, checkouts$CheckoutYear)

# apply that over the list ... default is to use 2 cores
mclapply(l, function(x) sum(x$Checkouts))
mclapply(l, function(x) sum(x$Checkouts), mc.cores = 4)

# how about another function on more cores?
mclapply(l, function(x) summary(lm(Checkouts ~ CheckoutMonth, x))$adj.r.squared, mc.cores = 8)