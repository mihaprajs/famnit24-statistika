# Vaje 6
  
# 1. naloga
pexp(2,1/3) # rate => lambda

# 2. naloga
lambda <- 3

povp1 <- c(1:200)

for (i in 1:200) {
  povp1[i] <- mean(rpois(10,lambda))
}
hist(povp1)

povp2 = 1:200

for (i in 1:200) {
  povp2[i] <- mean(rpois(60,lambda))
}
hist(povp2)

mean(povp1) # se probližuje lambdi = 3
mean(povp2)
var(povp1) 
var(povp2)

# 3. naloga
standPovp1 <- (povp1-lambda)/(sqrt(lambda)/sqrt(50))
standPovp2 <- (povp2-lambda)/(sqrt(lambda)/sqrt(50))
par(mfrow = c(1,2))
hist(standPovp1)
qqnorm(standPovp1)
hist(standPovp2)
qqnorm(standPovp2)
par(mfrow = c(1,1))

# 4. naloga
lambda1 <- 0.2
n <- 40
povp <- c(1:200)

for (i in 1:200) {
  povp[i] <- mean(rexp(n,lambda1))
}
hist(povp)

teoMean <- 1/lambda1
teoSD <- teoMean / sqrt(n)
sampleMean <- mean(povp)
sampleSD <- sd(povp)/sqrt(n)

hist(povp,col='beige')
abline(v=teoMean,lwd=3,col='firebrick')
abline(v=mean(povp),lwd=3,col='darkslategray4')

# 5. naloga
n <- 10
mu <- 50
sigma <- 10
B <- 100

stand1 <-rep(NA,B)
stand2 <-rep(NA,B)

x <- c(1:B)
for (var in x) {
  vzorec<-rnorm(n,mu,sigma)
  m<-mean(vzorec)
  std<-sd(vzorec)
  stc
  
  stand1[var]<-sqrt(n)*(m-mu)/sigma
  stand2[var]<-sqrt(n)*(m-mu)/std
}
