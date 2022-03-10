library(ggplot2)
df <- mtcars

# creating data and aesthetics layer
pl <- ggplot(data = df, aes(x=wt, y=mpg))

#geometry
print(pl + geom_point())

# size, shape, alpha
# size - size of data points
# alpha - prozirnost
print(pl + geom_point(size=5, alpha=0.5))

# sizing and shaping our point based on other features (parameters)

print(pl + geom_point(aes(size=hp)))

# we can make groupings by cylinder
# some sort of categorical feature -> factorize

print(pl + geom_point(aes(size=factor(cyl))))

print(pl + geom_point(aes(shape=factor(cyl), color=factor(cyl)), size=5))

pl2 <- pl + geom_point(size=5, color="blue")

print(pl2)

# hexcodes
pl2 <- pl + geom_point(size=5, color="#43e8d8")
print(pl2)

pl2 <- pl + geom_point(aes(color=hp), size=5)
print(pl2)

# choosing low color and high color

pl2 <- pl + geom_point(aes(color=hp), size=5)

pl3 <- pl2 + scale_color_gradient(low="blue", high="red")

print(pl3)
























