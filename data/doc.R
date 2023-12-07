1
```{r}
n <- 50
alfa <- 0.05
zi<-c(6,8,10,12,14) #hodnota
ni<-c(6,11,19,9,5) #početnosť jednotlivých hodnôt

data<- rep(zi,ni)
tab <- table(data)
test <- chisq.test(tab)

test$p.value < alfa
```
Zamietame, čiže sa jedná o empirické rozdelenie
2
```{r}
alfa <- 0.05
data3 <- c(rep(c("AA", "Aa", "aa"), c(58, 111, 71)))
tab <- table(data3)
prb <- c(1/4, 1/2, 1/4)
test <- chisq.test(tab, prb)

test$p.value < alfa
```
Potvrdzujeme, čiže teoretické a empirické rozdelenia sú zhodné
3
```{r}
alfa <- 0.05
x1<- c(5.2, 4.8, 1.9, 5.6, 5.5, 3.4, 5.3, 6.4, 3.5, 3.8)
x2<-c(4.8, 5.0, 5.7, 5.4, 5.5, 4.4, 4.2, 5.0, 5.3, 5.0)

test <- ks.test(x1, x2)

test$p.value < alfa
```
Potvrdzujeme, dáta pochádzajú z rovnakého setu

4
```{r}
alfa <- 0.05

data5 <- table(c(
  rep("Po", 52), rep("Ut", 43), rep("St", 54),
  rep("Št", 45), rep("Pi", 62), rep("So", 66), rep("Ne", 69)
))

prb <- c(1/7, 1/7, 1/7, 1/7, 1/7, 1/7, 1/7)

test <- chisq.test(data5, p=prb)
test$p.value < alfa
```
Uú dni, kedy je počet nehôd štatisticky významne vyšší ako iné dni
5
```{r}
alfa < 0.05

x1 <- c(5.7, 5.5, 4.3, 5.9, 5.2, 5.6, 5.8, 5.1)
x2 <- c(5, 4.5, 4.2, 5.4, 4.4)
df6<-data.frame(uroda=c(x1,x2),
                hnojenie=rep(c("T","N"), c(length(x1), length(x2))))

```
Áno, nový spôsob hnojenia má dopad na úrodnosť
6
```{r}

data7 <- c(5.21, 6.73, 4.31, 3.89, 2.10, 3.31, 2.86)

qqnorm(data7)
qqline(data7)
test <- ks.test(data7, "pnorm")
test$p.value < alfa
```
7
```{r}
alfa <- 0.05
data8<- c(19.2, 21.6, 17.5, 18.4, 18.8, 16.9, 20.4, 19.9, 18.1, 15.4)
test <- shapiro.test(data8)
qqnorm(data8)
qqline(data8)
test$p.value < alfa
```

