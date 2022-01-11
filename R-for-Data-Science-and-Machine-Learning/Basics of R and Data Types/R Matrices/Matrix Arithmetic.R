mat <- matrix(1:25, byrow = T, nrow = 5)
mat

# if we operate with a scalar
# everything is done on an element by element basis

mat * 2
mat / 2
mat^2
1 / mat

mat > 15
mat[mat >15]

# two matrices together:

mat + mat
mat / mat
mat^mat

# this will perform an element by element multiplication
mat*mat

# in linear algebra, if we want true matrix multiplication:
mat %*% mat

