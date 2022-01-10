v1 <- c(100, 200, 300)
v2 <- c("a", "b", "c")

# bracket notation
v1[2]

v2[3]

# slicing -> multiple indexing
v1[c(1, 2)]

v2[c(1, 3)]

v <- c(1,2,3,4,5,6,7,8,9,10)
# indexing starts at 2nd element
# end-index is also included
v[2:4]
v[7:10]

# we can use names of the vector as index marks
v <- c(1,2,3,4)
names(v) <- c("a", "b", "c", "d")
v

v[2]
# or
v["b"]

# multiple indexing
v[c("c", "d", "a")]

# comparison operators to filter out the elements of the vector
# filter values less than 2
# will only remain elements > 2
v[v>2]

v > 2

my.filter <- v > 2
v[my.filter]
