library(ggplot2)
library(ggthemes)
head(mpg)

# EXERCISE 1
pl <- ggplot(mpg, aes(x=hwy))
print(pl + geom_histogram(alpha=0.5, fill="red", bins=20))

# EXERCISE 2
pl <- ggplot(mpg, aes(x=factor(manufacturer)))
print(pl + geom_bar(aes(fill=factor(cyl))))

head(mpg)

# EXERCISE 3
head(txhousing)

pl3 <- ggplot(txhousing, aes(x=sales, y=volume))
print(pl3 + geom_point(alpha=0.5, color="pink"))

# EXERCISE 4
pl3 <- ggplot(txhousing, aes(x=sales, y=volume))
print(pl3 + geom_point(alpha=0.5, color="pink") + geom_smooth(stat="smooth"))
