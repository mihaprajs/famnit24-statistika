# Vaje 3

# Naloga 1

k = 60
n = 100

binomska <- function(p) {
  result <- (factorial(n) / (factorial(k) * factorial(n-k))) * p^k * (1-p)^(n-k)
  return(result)
}

plot(binomska(0.5))
plot(binomska(seq(0,1,0.01)))

plot(binomska(seq(0,1,0.01)),
     type="l",
     main="Binomal distribution",
     xlab="Probability of success (in %)",
     ylab="Probability of 40 successes")
# Naloga 2

# dbinom(x, size, prob, log = FALSE) -> density (P(X=k))
# pbinom(q, size, prob, lower.tail = TRUE, log.p = FALSE) -> porazdelitvena fja (P(X=<k))
# qbinom(p, size, prob, lower.tail = TRUE, log.p = FALSE) -> kvantili
# rbinom(n, size, prob) -> random values iz binomske porazdelitve

# Naloga 3

bindata <- rbinom(100,50,.8) # n=50, p=.8
hist(bindata,breaks=seq(30,50,1))

# Naloga 4

lines(seq(30,50,1),dbinom(seq(30,50,1),50,.8)*1e+2,col="dark green")

# Naloga 5

histbin <- hist(rbinom(1000,50,.8),breaks=seq(30,50,1),plot="False")
plot(histbin,col=ifelse(abs(histbin$breaks) < 35,"red",ifelse(abs(histbin$breaks) > 44,"dark green","gray")))

