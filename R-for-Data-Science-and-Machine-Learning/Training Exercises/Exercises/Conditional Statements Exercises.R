# EX 1
x <- 2

if (x %% 2 == 0){
  print('x is an even number')
} else {
  print('x is an uneven number')
}

# EX 2
x <- matrix()

if (is.matrix(x)){
  print("Is a Matrix")
} else {
  print("Not a Matrix")
}

# EX 3
x <- c(3, 7, 1)
if((x[1] > x[2]) & (x[2] > x[3])) {
  x <- c(x[1], x[2], x[3])
} else if ((x[1] > x[2]) & (x[2] < x[3])) {
  x <- c(x[1], x[3], x[2]) 
} else if ((x[1] < x[2]) & (x[1] > x[3])) {
  x <- c(x[2], x[1], x[3])
} else if ((x[1] < x[2]) & (x[1] < x[3])) {
  x <- c(x[2], x[3], x[1])
} else if ((x[1] < x[3]) & (x[1] > x[2])) {
  x <- c(x[3], x[1], x[2])
} else {
  x <- c(x[3], x[2], x[1])
}

print(x)

# EX 4
x <- c(1, 30, 20)
if(x[1] > x[2] & x[1] > x[3]){
  print(x[1])
} else if (x[2] > x[1] & x[2] > x[3]) {
  print(x[2])
} else {
  print(x[3])
}
