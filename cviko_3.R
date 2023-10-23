
punif(10, min=0, max=23, log=FALSE)
postupnost = seq(0, 23)
dbinom(postupnost)

z <- dunif(5, min = 0, max = 23, log = FALSE)
density <- seq(0, 23, 0.1)

plot(x=density, y = z)


pnorm(84, mean=72, sd=15.2, lower.tail=FALSE)
dnorm(84, mean=72, sd=15.2)

a <- pnorm(13,mean=13.2, sd=1.5)
b <- pnorm(14,mean=13.2, sd=1.5)

b - a

c <-pnorm(13,mean=13.2, sd=1.5,lower.tail=FALSE)

dnorm(14,mean=13.2, sd=1.5)

qnorm(0.05, mean = 13.2, sd = 1.5, lower.tail = FALSE)


data <- datasets::WWWusage
head(data)
