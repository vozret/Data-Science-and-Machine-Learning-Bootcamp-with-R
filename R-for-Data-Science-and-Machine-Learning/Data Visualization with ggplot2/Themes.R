library(ggplot2)

pl <- ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
print(pl)

# THEME LAYER
# theme_set(theme_minimal())
print(pl)

print(pl + theme_dark())

# using more themes
# install.packages("ggthemes")

library(ggthemes)
print(pl + theme_calc())
print(pl + theme_economist())
print(pl + theme_fivethirtyeight())
print(pl + theme_wsj())

