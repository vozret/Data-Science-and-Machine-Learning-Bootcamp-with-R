v <- c(1,2,3)

for (variable in v) {
  print(variable)
}

v <- c(1,2,3,4,5,6)

for (temp.var in v) {
  print(temp.var)
  if(temp.var == 4) {
    break
  }
}

v <- c(1,2,3,4,5,6)
for (temp.var in v) {
  result <- temp.var + 1
  print(result)
  print(temp.var)
}

# we can iterate through different types
my.list <- list(c(1,2,3), mtcars, 12)

for (item in my.list) {
  print(item)
}

# matrix
mat <- matrix(1:25, nrow = 5)

# it iterates through columns first
for (item in mat) {
  print(item)
}

print(mat)
# nested for-loop
# 1:nrow(mat) -> go from first to all the rows in the matrix
# nrow(mat) -> gives us the number of rows
for (row in 1:nrow(mat)) {
  print(mat[row,])
  for (col in 1:col(mat)) {
    print(paste('The element at row', row, 'and column:', col, 'is:', mat[row, col]))
  }
}
