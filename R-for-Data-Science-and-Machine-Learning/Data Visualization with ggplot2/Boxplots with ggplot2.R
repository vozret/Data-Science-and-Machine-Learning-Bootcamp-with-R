library(ggplot2)
df <- mtcars

head(mtcars)

# graphically depicting groups of numerical data through their quartile info

# MISTAKE
# Warning message:
#   Continuous x aesthetic -- did you forget aes(group=...)? 

# box plot on the x axis have a categorical variable (not continuous)
pl <- ggplot(df, aes(x=cyl, y=mpg))
print(pl + geom_boxplot())

# CORRECT
pl <- ggplot(df, aes(x=factor(cyl), y=mpg))
print(pl + geom_boxplot())

# horizontal
print(pl + geom_boxplot() + coord_flip())

# coloring box plots
print(pl + geom_boxplot(fill="blue"))

print(pl + geom_boxplot(aes(fill=factor(cyl))))

# theme
print(pl + geom_boxplot(aes(fill=factor(cyl))) + theme_dark())

print(pl + geom_boxplot(aes(fill=factor(cyl))) + theme_bw())
