# Vaje 9

# 1. naloga
library(pwr)
s = sqrt((15^2+17^2)/2)
pwr.t.test(d=-10/s,
           power=0.8,
           sig.level=0.05,
           type="two.sample",
           alternative="two.sided")

## a)
pwr.t.test(d=-10/s,
           power=0.75,
           sig.level=0.05,
           type="two.sample",
           alternative="two.sided")
# Če se sprijazni z nižjo močjo testa.
pwr.t.test(d=-10/s,
           power=0.75,
           sig.level=0.05,
           type="two.sample",
           alternative="less")

## b)
pwr.t.test(d=-10/s,
           n=30,
           sig.level=0.05,
           type="two.sample",
           alternative="two.sided")
# Moč je 0,66

## c)
pwr.t.test(d=-5/s,
           power=0.75,
           sig.level=0.05,
           type="two.sample",
           alternative="two.sided")
pwr.t.test(d=-10/s,
           power=0.75,
           sig.level=0.05,
           type="two.sample",
           alternative="two.sided")
pwr.t.test(d=-1/s,
           power=0.75,
           sig.level=0.05,
           type="two.sample",
           alternative="two.sided")
# Velikost učinka večja, manjši vzorec, manjša velikost učinka, večji vzorec

## d)
p<-pwr.t.test(d=.7,
           n=c(10,20,30,40,50,60,70,80,90,100),
           sig.level=.05,
           type="two.sample",
           alternative="two.sided")
plot(p$n,p$power,type="b",xlab="Sample size",ylab="Power")

# 2. naloga
prop.test(30,80,.5,alternative="two.sided",conf.level=.95)
# Lahko potrdimo, da je kovanec obtežen

# 3. naloga
p1<-rbinom(1,140,.6)
prop.test(p1,140,.5)

# 4. naloga
prop.test(c(40,25),c(50,50),alternative="two.sided")
