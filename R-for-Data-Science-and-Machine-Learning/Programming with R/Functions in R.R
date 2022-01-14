name_of_func <- function(input1, input2, input3 = 45) {
  # code to execute
  result <- input1 + input2
  return(result)
}

############

hello <- function(){
  print('hello')
}

hello()
hello

#############

hello <- function(name){
  print(paste('hello', name))
}

hello('sam')

#############

add_num <- function(num1, num2){
  print(num1 + num2)
}

add_num(4,5)

#############

add_num <- function(num1, num2){
  my.sum <- num1 + num2
  return(my.sum)
}

result <- add_num(4,5)
print(result)

# scope of the function

times5 <- function(num) {
  my.result <- num * 5
  return(my.result)
}

my.output <- times5(100)

print(my.output)
print(my.result)


###########

v <- "I'm a global variable"
stuff <- "I'm global stuff"

fun <- function(stuff) {
  print(v)
  stuff <- 'reassign stuff inside function fun'
  print(stuff)
}

fun(stuff)

print(v)
print(stuff)
