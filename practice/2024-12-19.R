# Vaje 10

## Naloga 1
data <- read.delim("practice/data.txt")
model1 <- lm(data$Weight~data$Height,data)
summary(model1)

model2 <- lm(data$Height~data$Shoe.size,data)
summary(model2)

model3 <- lm(data$Height~data$Sex)
summary(model3)
