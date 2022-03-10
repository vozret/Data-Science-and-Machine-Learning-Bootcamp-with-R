# install.packages("ggplot2")
# install.packages("ggplot2movies")

library(ggplot2)
library(ggplot2movies)

# DATA AND AESTHETUCS LAYER

colnames(movies)

head(movies)

pl <- ggplot(movies, aes(x = rating))

# GEOMETRY LAYER

print(pl + geom_histogram())

print(pl + geom_histogram(binwidth = 0.1))

print(pl + geom_histogram(binwidth = 0.1, color='red'))

print(pl + geom_histogram(binwidth = 0.1, color='red', fill="pink"))

print(pl + geom_histogram(binwidth = 0.1, color='red', fill="pink", alpha=0))

print(pl + geom_histogram(binwidth = 0.1, color='red', fill="pink", alpha=1))

pl2 <- pl + geom_histogram(binwidth = 0.1, color='red', fill="pink", alpha=0.4)

# labels

pl3 <- pl2 + xlab('Movie rating') + ylab("Count")

print(pl3)

# title

print(pl3 + ggtitle("My title"))

# saving plots
# plots window
# export - save as...

# fill out color of histogram based on the counts of the histogram
print(pl + geom_histogram(binwidth = 0.1, aes(fill=..count..)))






























