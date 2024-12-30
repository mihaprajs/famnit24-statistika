# Vaje 4

# 1. naloga
  # mean(x)=12
# ppois() -> porazdelitvena fja; P(X=<q)
# dpois() -> density; P(X=x)=(lambda^x*e^-lambda)/x!

ppois(15,12)
ppois(18,12,F) # enako kot 1- ppois(18,12)

# 2. naloga
p <- .14
plot(pgeom(seq(0,20,.1),p),type="s")

# 3. naloga
dbinom(15,500,.02)

# 4. naloga
choose(5,3)
choose(10000,5874)
choose(10000000000,9999999999)

# Vaje 3 (2024-10-24.R)
plot(pbinom(27,seq(27,100),.3)) # INDEX JE NAPAČEN!!!!!!
