df <- read.csv('student-mat.csv')
head(df)

#### PART 1
#### EDA

df <- read.csv('student-mat.csv', sep=";")
head(df)

summary(df)

# checking if there are nay na values
any(is.na(df))

str(df)

library(ggplot2)
library(ggthemes)
library(dplyr)
library(corrgram)
library(corrplot)


# creating a plot
# correlation

# grab only the numeric values
num.cols <- sapply(df, is.numeric)

# filter numeric values for correlation
cor.data <- cor(df[, num.cols])
print(cor.data)

# visualizing the data
# install.packages('corrgram')
# install.packages('corrplot')

# using the corrplot
print(corrplot(cor.data))

print(corrplot(cor.data), method="color")

# using corrgram
corrgram(df)
# help(corrgram)

corrgram(df, order=TRUE, lower.panel = panel.shade,
         upper.panel = panel.pie, text.panel = panel.txt)

print(ggplot(df, aes(x=G3)) + geom_histogram(bins=20, alpha = 0.5, fill = "blue"))
# high mean value at 10

print(ggplot(df, aes(x=G3)) + geom_histogram(bins=40, alpha = 0.5, fill = "blue"))

#### PART 2
#### BUILDING A MODEL

# split data into train and test set
# install.packages('caTools')

library(caTools)

# random split
set.seed(101)

# slit up sample
# creates new column in the df with random TRUE, FALSE values
# for train, test split
sample <- sample.split(df$G3, SplitRatio = 0.7)

# 70% of the data goes into training
train <- subset(df, sample == TRUE)
test <- subset(df, sample == FALSE)

# training our model
# lm - linear model
# y - feature we are trying to predict
# x1 + x2 - predictors we want to use
# data - data
# model <- lm(y ~ x1 + x2 , data)
# model <- lm(y ~. , data) # using all features

### BUILDING A MODEL
model <- lm(G3 ~ ., data = train)

# RUN THE MODEL
print(summary(model))

## plotting the residuals
res <- residuals(model)
class(res)

res <- as.data.frame(res)
head(res)

print(ggplot(res, aes(res)) + geom_histogram(fill = "blue", alpha = 0.5))












