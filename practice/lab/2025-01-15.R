# Vaje 12

## Naloga 1
library(MASS)
Aids2


## Naloga 2
df<-table(Aids2$sex,Aids2$status)
chisq.test(df)
chisq.test(df,correct=F)

## Naloga 3
df1<-table(survey$Smoke,survey$Exer)
chi<-chisq.test(df1)
chi$expected

## Naloga 4
chi<-cbind(df1[,"Freq"],df1[,"None"]+df1[,"Some"])
chi
chisq.test(chi)

## Naloga 5
levels(survey$Smoke)
smoke.feq<-table(survey$Smoke)
smoke.prob<-c(.045,.795,.085,.075)
chi1<-chisq.test(smoke.feq,p=smoke.prob)
chi1

# Vaje 13
library(tidyverse)

## Naloga 1
my_data <- PlantGrowth

levels(my_data$group)

my_data$group <- ordered(my_data$group,
                         levels = c("ctrl", "trt1", "trt2"))

group_by(my_data, group) |>
  summarise(
    count = n(),
    mean = mean(weight, na.rm = TRUE),
    sd = sd(weight, na.rm = TRUE)
    )

ggboxplot(my_data, x = "group", y = "weight", 
          color = "group", palette = c("#00AFBB", "#E7B800", "#FC4E07"),
          order = c("ctrl", "trt1", "trt2"),
          ylab = "Weight", xlab = "Treatment")

# Compute the analysis of variance
res.aov <- aov(weight ~ group, data = my_data)
# Summary of the analysis
summary(res.aov)

## Naloga 2
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"
df <- read.csv(PATH) %>%
  select(-X) %>% 
  mutate(poison = factor(poison, ordered = TRUE))
glimpse(df)

levels(df$poison)

ggplot(df, aes(x = poison, y = time, fill = poison)) +
  geom_boxplot() +
  geom_jitter(shape = 15,
              color = "steelblue",
              position = position_jitter(0.21)) +
  theme_classic()

anova_one_way <- aov(time~poison, data = df)
summary(anova_one_way)

        