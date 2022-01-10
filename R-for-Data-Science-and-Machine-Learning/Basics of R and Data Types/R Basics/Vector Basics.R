# 1D array 
# combine function

# vector of numerics
nvec <- c(1, 2, 3)
nvec

# numeric because every element in a vector is a numeric
class(nvec)

cvec <- c("U", "S", "A")
cvec

class(cvec)

lvec <- c(T, F, F)
lvec

class(lvec)

# putting different data types in vector
# it will force everything to be of the same class

v <- c(TRUE, 20, 40)
v

class(v)
v <- c("U", "S", "A", 20, 31)
v

# vectors and names
temps <- c(72, 71, 68, 73, 69, 75, 76)
temps

names(temps) <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
temps

days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')
names(temps) <- days
temps

