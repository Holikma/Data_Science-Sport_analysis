library(ggplot2)
library(moments)
dat <- datasets::WWWusage 

Modus <- function(x) {
    ux <- unique(x)
    ux[which.max(tabulate(match(x, ux)))]
}

priemer <- mean(dat) # priemerná hodnota v dátach
modus <- Modus(dat) #najčastejšie sa vyskytujúca hodnota v dátach
median <- median(dat) # stredná hodnota v dátach
Q1 <- quantile(dat, 0.25) # 1 quantil
Q3 <- quantile(dat, 0.75) # 3 quantil
minimum <- min(dat) # minimum v dátach
maximum <- max(dat) # maximum v dátach 
IQR <- Q3 - Q1
šikmost <- skewness(dat)
deviacia <- sd(dat)
suma <- sum(dat) # počet návšetvníkov počas 100 minút

dat1 <- data.frame(dat)
hist(dat) # z grafu vidíme, že najčastejšie bolo aktívnych približne 85 ludí
boxplot(dat1)  
plot(dat1)


