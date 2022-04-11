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

#### PART 2
#### BUILDING A MODEL




















