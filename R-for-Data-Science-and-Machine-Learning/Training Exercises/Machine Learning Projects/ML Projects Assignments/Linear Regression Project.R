# reading the bike df
bike <- read.csv("../CSV files for ML Projects/bikeshare.csv")

# head of df
head(bike)

# plotting count vs temp
library(ggplot2)

plot_1 <- ggplot(bike, aes(temp, count)) + geom_point(alpha = 0.5)
print(plot_1)

plot_1 <- ggplot(bike, aes(temp, count)) + geom_point(alpha = 0.5, aes(color = temp)) + theme_bw()
print(plot_1)

# plot count vs datetime
bike$datetime <- as.POSIXct(bike$datetime)


plot_2 <- ggplot(bike, aes(datetime, count)) + geom_point(alpha = 05, aes(color = temp))
print(plot_2)

# customization of color
plot_3 <- plot_2 + scale_color_continuous(low = "#55D8CE", high = "#FF6E2E") + theme_bw()
print(plot_3)

# correlation between temp and count
cor(bike[, c("temp", "count")])

# exploring the season data
plot_4 <- ggplot(bike, aes(factor(season), count)) + geom_boxplot(aes(color=factor(season))) + theme_bw()
print(plot_4)

# FEATURE ENGINEERING

# creating an "hour" column
bike$hour <- sapply(bike$datetime, function(x){format(x, "%H")})
print(head(bike))

# scatterplot count vs hour
library(dplyr)

plot_5 <- ggplot(filter(bike, workingday==1), aes(hour, count)) + geom_point()
print(plot_5)

# scalecolor gradient
plot_5 <- plot_5 + geom_point(aes(color=temp))
plot_5 <- plot_5 + scale_color_gradientn(colours = c("dark blue", "blue", "light blue", "light green", "yellow", "orange", "red"))
# plot_5 <- plot_5 + theme_bw()
print(plot_5)

# adding jitter

plot_5 <- plot_5 + geom_point(aes(color=temp), position = position_jitter(w=1, h=0), alpha = 0.5)
plot_5 <- plot_5 + scale_color_gradientn(colours = c("dark blue", "blue", "light blue", "light green", "yellow", "orange", "red"))
# plot_5 <- plot_5 + theme_bw()
print(plot_5)

# plotting the non working days

plot_6 <- ggplot(filter(bike, workingday==0), aes(hour, count)) + geom_point(aes(color=temp), position = position_jitter(w=1, h=0), alpha = 0.5)
plot_6 <- plot_6 + scale_color_gradientn(colours = c("dark blue", "blue", "light blue", "light green", "yellow", "orange", "red"))
print(plot_6)

###BUILDING THE MODEL

temp.model <- lm(count ~ temp, bike)

print(summary(temp.model))

# prediction for 25 degrees
6.0462 + 9.1705*25

# using predict() method
temp.test <- data.frame(temp=c(25))
temp.test

predict(temp.model, temp.test)

# hour column to numeric values

bike$hour <- sapply(bike$hour, as.numeric)

temp.model.2 <- lm(count ~ season + holiday + workingday + weather + temp + humidity + windspeed + factor(hour), bike)

# or
model <- lm(count ~ . -casual -registered - datetime - atemp -datetimem, bike)

print(summary(model))










