# Creating data frames

# basic empty data frame
empty <- data.frame()

# data frame from vector
c1 <- 1:10

letters

c2 <- letters[1:10]

df <- data.frame(col.name.1 = c1, col.name.2 = c2)
df

# Importing and exporting data

# read csv file
# d2 <- red.csv('some_file.csv')

# write to csv
# index will be saved when writing to csv
# we can delete it after reading from csv
write.csv(df, file = "saved_df.csv")

df2 <- read.csv("saved_df.csv")
df2

df

# Getting information about data frame
# get row count
nrow(df)

# get column count
# just the columns that have names
ncol(df)

# we can also use rownames
colnames(df)

# get the structure of the data frame
str(df)

# get the statistical summary of the data frame
summary(df)

# referencing cells

# using brackets
# data_frame[[row_value, column_value]]
df[[5, 2]]

# when we want to reference a column name
df[[5, 'col.name.2']]

# assigning a value to a cell
df[[2, 'col.name.1']] <- 9999
df

# referencing rows
df[1,]

# referencing columns
mtcars

head(mtcars)

# get a vector of values
mtcars$mpg

# brackets
mtcars[, 'mpg']

# brackets but with a number of that column
mtcars[, 1]

# two sets of brackets
mtcars[['mpg']]

# get back the data frame instead just vector with values
# single set of brackets
mtcars['mpg']
# or mtcars[1]

# get multiple columns back
head(mtcars[c('mpg', 'cyl')])

# adding rows
df2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')
df2

# using rbind
dfnew = rbind(df, df2)
dfnew

# adding columns
df

df$newcol <- 2*df$col.name.1
df

df$newcol.copy <- df$newcol
head(df)

df[, 'newcol.copy2'] <- df$newcol
head(df)

# setting column names
colnames(df)

# renaming
# all of them at once
colnames(df) <- c('1', '2', '3', '4', '5')
head(df)

# rename a single column
colnames(df)[1] <- 'NEW COL NAME'
head(df)

# selecting multiple rows
df[1:10,]
df[1:3,]

# get the first seven rows in the data frame
head(df, 7)

# select everything but a certain row
# negative signs

head(df)
df[-2,]

# conditional selection
head(mtcars)

mtcars[mtcars$mpg > 20,]

# multiple conditions
mtcars[(mtcars$mpg > 20) & (mtcars$cyl == 6),]

mtcars[(mtcars$mpg > 20) & (mtcars$cyl == 6), c('mpg', 'cyl', 'hp')]

# we can also use the subset function
subset(mtcars, (mpg > 20) & (cyl == 6))

# select multiple columns
head(mtcars)

head(mtcars[, c(1,2,3)])

head(mtcars[, c('mpg', 'cyl', 'disp')])

# dealing with missing data

# check for na values
# we get back the data frame with booleans
is.na(mtcars)

# if any of the values is na
any(is.na(mtcars))

# we can pass in the column
any(is.na(mtcars$mpg))

# replace the missing data
df[is.na(df)] <- 0
df

# for a single column
df[2][is.na(df[2])] <- 0

