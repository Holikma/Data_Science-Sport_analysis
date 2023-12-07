```{r}
library(ggplot2)


HO <- 19
sigma <- 0.5
ziv<-c(19.2, 19.6, 18.6, 19.4, 19, 18.5, 18, 18.4, 18.1, 18)
df<-data.frame(ziv)


ggplot(data = df, aes(x = "", y = ziv)) + 
  geom_boxplot(fill="#4472c4", outlier.colour = "red")+labs(x="", y="Životnosť", title = "Boxplot životnosti bateriek")+
  theme(plot.title = element_text(hjust=0.5))+
  geom_hline(aes(yintercept=mean(ziv)), colour="#ff9999")+
  geom_hline(aes(yintercept=19), colour="#e60000")

t.test(ziv, mu = HO, alternative = "less", conf.level = 0.99)
```
```{r}
x<-c(1.8, 1, 2.2, 0.9, 1.5, 1.6) 
y<-c(1.5, 1.1, 2.0, 1.1, 1.4, 1.4)

df<-data.frame(Opotrebovanie=c(x,y), 
               Pneumatika= rep(c("L","P"),c(length(x),length(y))))
ggplot(df, aes(x=Pneumatika, y=Opotrebovanie)) +
  geom_boxplot(fill=c("#4472c4", "#FF6666"))+
  geom_hline(aes(yintercept=mean(x)), colour="#ff9999")+
  geom_hline(aes(yintercept=mean(y)), colour="#e60000")

t.test(x, y, paired=T, conf.level = 0.95)
```

```{r}
library(readxl)
byty<-read_excel("byty.xlsx")
head(byty, 10)

var.test(byty$BA, byty$KE, alternative = "two.sided")
t.test(byty$BA, byty$KE, alternative = "two.sided", var.equal = T)
```

