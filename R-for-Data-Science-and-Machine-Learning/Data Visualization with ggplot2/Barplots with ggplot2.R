# count when dealing with categorical data

library(ggplot2)
df <- mpg
head(mpg)

# data and aesthetics
pl <- ggplot(df, aes(x=class))
print(pl + geom_bar())

# bar_values for third value of data

print(pl + geom_bar(color="blue", fill="blue"))

# automatically create autostacked barplot
print(pl + geom_bar(aes(fill=drv)))

print(pl + geom_bar(aes(fill=drv), position="dodge"))

print(pl + geom_bar(aes(fill=drv), position="fill"))
