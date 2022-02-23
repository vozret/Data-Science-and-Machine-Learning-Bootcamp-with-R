# seq() to create a sequence
# creates a regular sequence
# seq(start, stop, step_size)

seq(0, 10, by=2)

seq(0, 100, by=10)

# help("seq")

# sort - sort a vector
# returns sorted vector
# not an inplace function
v <- c(1,4,7,2,13,3,11)
v
sort(v)
v

# descending order
sort(v, decreasing = T)

# vector of characters

cv <- c("b", "d", "a")
cv

sort(cv)

cv <- c("b", "c", "d", "a", "C")
sort(cv)

# rev() -> reverse elemnts in object
v <- 1:10
rev(v)

# str() -> show the structure of an object
str(v)
str(mtcars)

# summary() -> statistical summary

# append() -> merge objects together
# works on vectors and lists

v <- 1:10
v2 <- 35:40

append(v, v2)

# checking and converting data types in R

# check th data type
# is.smth
v <- c(1,2,3)
is.vector(v)

is.data.frame(v)

is.data.frame(mtcars)

# try to convert to another data type
# as.something
# not an inplace method

as.list(v)
is.vector(v)

as.matrix(v)
















