```{r}
options(repos = list(CRAN="http://cran.rstudio.com/"))
#install.packages ("dataset_load")

library(datasets)
```
```{r}
dat <- USArrests
```
```{r}
dat$state <- tolower(rownames(USArrests))
```
```{r}
names(dat)
```
```{r}
class(dat$Murder)
```
```{r, eval=TRUE}
hist(dat$Murder, main="Histogram of Murder", xlab="Arrests per 100,000 Residents", ylab="Frequency")
```
summary(dat$Murder)
```{r, eval=TRUE}
par(mfrow=c(3,1))
hist(dat$Murder, main="Histogram of Murder", xlab="Arrests per 100,000 Residents", ylab="Frequency")
hist(dat$Assault, main="Histogram of Assault", xlab="Arrests per 100,000 Residents", ylab="Frequency")
hist(dat$Rape, main="Histogram of Rape", xlab="Arrests per 100,000 Residents", ylab="Frequency")
```

```{r, eval = FALSE, fig.width = 7.5, fig.height = 4}
install.packages("maps")
install.packages("ggplot2")

library(maps)
library(ggplot2) 

ggplot(dat, aes(map_id=state, fill=Murder)) + 
  geom_map(map=jmap_data("state")) + 
  expand_limits(x=map_data("state")$long, y=map_data("state")$lat)
```