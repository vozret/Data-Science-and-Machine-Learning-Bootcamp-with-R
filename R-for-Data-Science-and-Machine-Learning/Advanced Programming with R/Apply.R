# apply function
# to apply function over a list or a vector

# randomly sample objects from a vector
# sample(vector object, how many samples we want to grab from this vector)
# always a different number
sample(x = 1:100, 3)

v <- c(1:5)

# custom function
addrand <- function(x) {
  rand <- sample(1:100, 1)
  return (x + rand)
}

print(addrand(10))

# lapply(vector, function to apply (only the name)) -> list apply
# we get a list as an output
resultl <- lapply(v, addrand)
print(resultl)

# sapply returns a vector
# simplifies lapply function

resultS <- sapply(v, addrand)
print(resultS)

v <- 1:5

times2 <- function(num){
  return (num*2)
}

result <- sapply(v, times2)
print(result)

# help(sapply)

## ANONYMOUS FUNCTIONS
# similar to lambda expressions in python
# good for something simple

v <- 1:5

result <- sapply(v, function(num){num*2})
print(v)
print(result)

# Apply functions for multiple inputs
add_choice <- function(num, choice){
  return (num + choice)
}

print(add_choice(2, 10))

# error
# sapply(v, add_choice)

print(sapply(v, add_choice, choice=100))































