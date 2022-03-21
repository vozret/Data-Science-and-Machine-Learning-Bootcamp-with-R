library(ggplot2)
library(data.table)

df <- fread("Economist_Assignment_Data.csv", drop=1)

print(head(df))

pl <- ggplot(df, aes(x=CPI, y=HDI, color=Region)) + geom_point()


print(pl)

pl <- ggplot(df, aes(x=CPI, y=HDI, color=Region)) + geom_point(size=4, shape=1)
print(pl)
# pl <- ggplot(df, aes(x=CPI, y=HDI, color=Region)) + geom_point(size=4, shape=3)
# print(pl)

# adding trendline
pl2 = pl + geom_smooth(aes(group=1))
print(pl2)

# lm - linear model
pl2 = pl + geom_smooth(aes(group=1), method="lm")
print(pl2)

# SE = F - removes confidence interval (grey area aroound the curve)
pl2 = pl + geom_smooth(aes(group=1), method="lm", formula = y~log(x), se=F, color="red")
print(pl2)

# adding labels

pl3 = pl2 + geom_text(aes(label=Country))
print(pl3)

# minimize number of labels, select the subset
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl3 <- pl2 + geom_text(aes(label = Country), color="gray20", 
                      data = subset(df, Country %in% pointsToLabel), check_overlap = TRUE)
print(pl3)


library(ggthemes)

print(pl3 + theme_economist_white())

# adding coordinates
pl4 <- pl3 + scale_x_continuous(limits=(c(0.9, 10.5)), breaks = 1:10)
print(pl4 + theme_economist_white())


















