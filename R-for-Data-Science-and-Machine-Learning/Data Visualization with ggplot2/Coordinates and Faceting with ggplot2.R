library(ggplot2)

# COORDINATES
pl <- ggplot(mpg, aes(x=displ, y=hwy)) + geom_point()
print(pl)

# xlim and ylim expect a vector c(lower_limit, higher_limit)
pl2 <- pl + coord_cartesian(xlim = c(1, 4), ylim=c(15, 30))
print(pl2)

# aspect ratio
pl2 <- pl + coord_fixed(ratio = 1/3)
print(pl2)

# FACET GRID
# create plot for each unique value of categorical variable
print(pl)

# facet_grid(. ~ variable)
# . -> do you want to facet by y axis
# ~
# what do you want to facet by
# (. ~ variable) -> facet variable by x axis
# (variable ~ .) -> facet variable by y axis

# cylinders are separated along the x axis
print(pl + facet_grid(. ~ cyl))

print(pl + facet_grid(drv ~ .))

# 2D facets:
print(pl + facet_grid(drv ~ cyl))



















