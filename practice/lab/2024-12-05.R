# Vaje 8

# 1. naloga

library(pwr)
pwr.t.test(d=(0-5)/5,power=0.8,sig.level=0.05,type="paired",alternative="two.sided")
# d = Effect size (Cohen's d) - difference between the means 
# divided by the pooled standard deviation
pwr.t.test(d=(0-5)/5,power=0.8,sig.level=0.05,type="paired",alternative="less")
pwr.t.test(d=(0+5)/5,power=0.8,sig.level=0.05,type="paired",alternative="greater")

pwr.t.test(d=5/10,power=0.8,sig.level=0.05,type="paired",alternative="two.sided")
pwr.t.test(d=5/10,n=30,sig.level=0.05,type="paired",alternative="two.sided")
pwr.t.test(d=5/10,n=20,sig.level=0.05,type="paired",alternative="two.sided")
pwr.t.test(d=5/10,n=20,sig.level=0.07,type="paired",alternative="two.sided")

# 3. naloga
t.test(x=c(125,131,126,117,114,134,123,135,100,117),
       y=c(121,118,119,110,113,118,111,130,94,118),
       alternative="less",
       mu=5,
       paired=T,
       conf.level=0.95)

t.test(x=c(125,131,126,117,114,134,123,135,100,117),
       y=c(121,118,119,110,113,118,111,130,94,118),
       alternative="greater",
       mu=0,
       paired=T,
       conf.level=0.95)
