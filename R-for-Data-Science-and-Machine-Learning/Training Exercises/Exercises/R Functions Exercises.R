# EX 1

prod <- function(num1 = 0, num2 = 0) {
  product <- num1 + num2
  return(product)
}

print(prod(3,4))

# EX 2
num_check <- function(num, vec) {
  is_in_vector <- FALSE
  for (item in vec) {
    if(num == item) {
      is_in_vector <- TRUE
      break
    }
  }
  return(is_in_vector)
}

print(num_check(2, c(1,2,3)))
print(num_check(2, c(1,4,5)))

# EX 3

num_count <- function(num, vec) {
  num.of.occurences <- 0
  
  for (numb in vec) {
    if(num == numb) {
      num.of.occurences <- num.of.occurences + 1
    }
  }
  
  return(num.of.occurences)
}

print(num_count(2, c(1,1,2,2,3,3)))
print(num_count(1,c(1,1,2,2,3,1,4,5,5,2,2,1,3)))

# EX 4

bar_count <- function(kilos) {
  num_of_small_bars <- 0
  num_of_big_bars <- 0
  
  num_of_small_bars <- kilos %% 5
  num_of_big_bars <- (kilos - num_of_small_bars) / 5
  
  total_num_of_bars <- num_of_small_bars + num_of_big_bars
  
  print(paste('number of small bars: ', num_of_small_bars, ' number of big bars: ', num_of_big_bars))
  return(total_num_of_bars)
}

bar_count(6)
bar_count(17)

# EX 5

summer <- function(num1, num2, num3) {
  vec <- c(num1, num2, num3)
  vector_of_values <- c(0)
  for (item in vec) {
    # print(item)
    if(item %% 3 != 0) {
      vector_of_values <- append(vector_of_values, item)
    }
    # print(vector_of_values)
  }
    sum.of.values <- sum(vector_of_values)
  return(sum.of.values)
}

summer(7,2,3)
summer(3,6,9)
summer(9,11,12)

# EX 6

is.prime <- function(number) {
  if (number <= 1) {
    return (FALSE)
  } else if (number <= 3) {
    return (TRUE)
  }
  
  if (number %% 2 == 0 || number %% 3 == 0) {
    return (FALSE)
  }
  
  i <- 5
  while (i*i <= number) {
    if (number %% i == 0 || number %% (i+2) == 0) {
      return (FALSE)
    }
    i = i + 6
  }
  return (TRUE)
}

is.prime(2)
is.prime(5)
is.prime(4)
is.prime(237)
is.prime(131)
