library(ggplot2)
library(ggplot2movies)

pl <- ggplot(movies, aes(x=year, y=rating))

# bin chart
# shows number of ocurrences
print(pl + geom_bin2d())

pl2 <- pl + geom_bin2d() + scale_fill_gradient(high="red", low="green")
print(pl2)

pl2 <- pl + geom_bin2d(binwidth=c(3, 1)) + scale_fill_gradient(high="red", low="blue")
print(pl2)

# hex plot
# install.packages("hexbin")
pl2 <- pl + geom_hex() + scale_fill_gradient(high="red", low="blue")
print(pl2)

# density plot
pl2 <- pl + geom_density2d()
print(pl2)

