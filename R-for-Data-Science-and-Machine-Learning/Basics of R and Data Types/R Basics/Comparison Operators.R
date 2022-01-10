# greater than
5 > 6

# less than
5 < 6

# greater or equal
5 >= 6

# less or equal
5 <= 6

# equality
# one "=" is a sort of assignment
2 == 3

# not equal to
2 != 4

# we have to pay attention to spacing
# reassignment vs comparison
v <- 2
v
v < -1
v <- 1

# comparison with vectors
# returns a vector with logical values
v <- c(1, 2, 3, 4, 5)
v < 2

print(v == 3)

# element by element comparison between vectors
v2 <- c(10, 20, 30, 40, 50)

v < v2
