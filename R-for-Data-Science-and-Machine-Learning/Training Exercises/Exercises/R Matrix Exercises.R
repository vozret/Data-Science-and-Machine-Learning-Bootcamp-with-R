# EX 1
A <- c(1, 2, 3)
B <- c(4, 5, 6)

rbind(A, B)

# EX 2
mat <- matrix(1:9, nrow = 3)

# EX 3
is.matrix(mat)

# EX 4
mat2 <- matrix(1:25, nrow = 5, byrow = T)
mat2

# EX 5
mat2[2:3, 2:3]

# EX 6
mat2[4:5, 4:5]

# EX 7
sum(mat2)

# EX 8
help(runif)

matrix(runif(20, min=0, max=1)*100, nrow = 4, byrow = T)
