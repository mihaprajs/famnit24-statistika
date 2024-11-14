# Vaje 5

# 1. naloga

# 2. naloga
pnorm(seq(-3,3,0.01))

# 3. naloga
values <- dnorm(seq(-3,3,0.01))
plot(values,type="l",xaxt="n",xlab="Z-score")
axis(1,at=which(values==dnorm(0)),labels=c(0))
axis(1,at=which(values==dnorm(1)),labels=c(-1,1))
axis(1,at=which(values==dnorm(2)),labels=c(-2,2))

values2 <- pnorm(seq(-3,3,0.01))
plot(values2,type="l",xaxt="n",xlab="Z-score")
axis(1,at=which(values2==pnorm(0)),labels=c(0))
axis(1,at=which(values2==pnorm(-1)),labels=c(-1))
axis(1,at=which(values2==pnorm(-2)),labels=c(-2))
axis(1,at=which(values2==pnorm(1)),labels=c(1))
axis(1,at=which(values2==pnorm(2)),labels=c(2))

# 4. naloga
mean=17
sd=3
x10<-rnorm(10,mean,sd)
hist(x10,breaks=10)
x100<-rnorm(100,mean,sd)
hist(x100,breaks=100)
x10000<-rnorm(10000,mean,sd)
hist(x10000,breaks=1000)

# 5. naloga
?qqnorm
?qqplot

# 6. naloga
qqnorm(trees$Height)
qqnorm(trees$Girth)
qqnorm(trees$Volume)

# 7. naloga
v1<-rnorm(50,mean,sd)
v2<-rgeom(50,.4)
qqplot(v1,v2)

