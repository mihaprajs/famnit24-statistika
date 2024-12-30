# Naloga 1

tempconvert <- function(x) {
  newtemp <- ((x-32)*(5/9))+273.15
  return(newtemp)
}


tempconvert(-40)

# Naloga 2
  # a)
populacija1<-c(8,9,5,19,150,7,9,1,13,15)


mean(populacija1)
median(populacija1)

quantile(populacija1)
quantile(populacija1,0.5)

  # b)
n1<-5
m1<-100

y1<-matrix(nrow=m1,ncol=n1)
povprecje1<-c(1:m1)

for (i in 1:m1) {
  y1[i,]<-sample(populacija1,n1,replace=T)
  povprecje1[i]<-mean(y1[i,])
}

hist(povprecje1) # lahko tudi z ggplot

mean(povprecje1)

  # c)
populacija2<-c(8,9,5,19,7,9,1,13,15)
n2<-5
m2<-100

y2<-matrix(nrow=m2,ncol=n2)
povprecje2<-c(1:m2)

for (i in 1:m2) {
  y2[i,]<-sample(populacija2,n2,replace=T)
  povprecje2[i]<-mean(y2[i,])
}

hist(povprecje2) # lahko tudi z ggplot

mean(povprecje2)

# Naloga 3
  # a)
poljscine<-read.delim("practice/lab/poljscine.txt")
  #b)
plot(poljscine$Pšenica.in.pira,type="b",xaxt="n",xlab="Leto",ylab="Površina v ha", main="Površina pridelave pšenice in pire")
axis(1, at=seq(1, 33, 2),labels=seq(1991,2023,2))

min(poljscine$Pšenica.in.pira)
max(poljscine$Pšenica.in.pira)

plot(poljscine$Pšenica.in.pira,type="b",xaxt="n",xlab="Leto",ylab="Površina v ha", main="Površina pridelave pšenice in pire")
axis(1, at=seq(1, 33, 2),labels=seq(1991,2023,2))
axis(2, at=seq(26000, 40000, 4000),labels=seq(26000, 40000, 4000))

  # c)
povprecje<-matrix(0,2,7)
for (i in 1:7) {
  povprecje[2,i]=mean(poljscine[,i])
}

povprecje[1,]<-names(poljscine)

povprecje

  # d)

A <- poljscine$Koruza.za.zrnje[1:10]
B <- poljscine$Koruza.za.zrnje[-(1:10)]

Amean <- mean(A)
Bmean <- mean(B)

  # e)
plot(x=poljscine$Hmelj,y=poljscine$Krompir,xlab="Hmelj (v ha površine)",ylab="Krompir (v ha površine)", main="Površina pridelave hmelja in krompirja")
