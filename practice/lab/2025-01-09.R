# Vaje 11

## Naloga 1
data<-mtcars
plot(data$wt~data$mpg)
cor(x=data$wt,y=data$mpg,method="pearson")
cor(x=data$wt,y=data$mpg,method="spearman")

cor.test(x=data$wt,y=data$mpg,alternative="two.sided",method="pearson")
cor.test(x=data$wt,y=data$mpg,alternative="two.sided",method="spearman")

cor.test(x=data$wt,y=data$mpg,alternative="less",method="pearson")
cor.test(x=data$wt,y=data$mpg,alternative="less",method="spearman")

## Naloga 2
library(ggpubr)
ggqqplot(data$mpg,ylab="MPG")

ggscatter(data,x="mpg",y="wt")

## Naloga 3
data2<-read.delim("practice/lab/data.txt")
ggscatter(data2,"Books..how.many.per.year.","Internet..hours.per.week.")
ggscatter(data2,"Weight","Shoe.size",cor.coef=T,cor.method="spearman")
