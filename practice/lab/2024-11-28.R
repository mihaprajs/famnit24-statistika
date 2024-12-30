# Vaje 7

library(BSDA)

# 1. naloga

zsum.test(mean.x=14.6,sigma.x=2.5,n.x=35,alternative="two.sided",mu=15.4,conf.level=0.95)

# Rezultat:
# z -> vrednost testne stat.
# p -> p-value je verjetnost da bomo pri veljavni ničelni domnevi
#      dobili "naš" rezultat ali bolj ekstremen rezultat (p < α => zavrnemo H0,
#      p > α => ne zavrnemo H0)

zsum.test(14.6,2.5,35,alternative="less",mu=15.4,conf.level=0.95)
# lahko zavrnemo H0 za H1-

# 2. naloga
tsum.test(14.6,2.5,35,alternative="two.sided",mu=15.4,conf.level=0.95)

tsum.test(14.6,2.5,35,alternative="less",mu=15.4,conf.level=0.95)

# 3. naloga
tsum.test(9900,125,30,alternative="less",mu=10000,conf.level = 0.95)
# stat. zelo značilni, H0 lahko zavrnemo

# 4. naloga
tsum.test(2.1,0.3,35,alternative="greater",mu=2,conf.level=0.95)
# lahko zavrnemo