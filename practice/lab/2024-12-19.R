# Vaje 10

## Naloga 1
data <- read.delim("practice/lab/data.txt")
model1 <- lm(data$Weight~data$Height,data)
summary(model1)

model2 <- lm(data$Shoe.size~data$Height,data)
summary(model2)

model3 <- lm(data$TV..hours.per.week.~data$Internet..hours.per.week.,data)
summary(model3)

## Naloga 2
plot(x=data$Height,y=data$Weight)
abline(model1)

library(ggplot2)
ggplot(data,aes(x=data$Height,y=data$Weight)) +
  geom_point() +
  stat_smooth(method="lm",col="red")

## Naloga 3