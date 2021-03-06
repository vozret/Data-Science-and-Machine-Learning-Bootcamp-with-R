v <- c(1, 2, 3)
m <- matrix(1:10, nrow = 2)
df <- mtcars

class(v)
class(m)
class(df)

# for storing different types of variables
my.list <- list(v, m, df)
my.list

# naming elements of list
my.named.list <- list(sample.vec = v, my.matrix = m, sample.df = df)
my.named.list

# list is more of an organizational tool
my.named.list$sample.vec

my.list[1]

my.named.list[1]
my.named.list['sample.vec']

# this is still a list
class(my.named.list['sample.vec'])

# to get the data inside the list -> double brackets or $ sign
class(my.named.list$sample.vec)
class(my.named.list[['sample.vec']])

my.named.list[['sample.vec']]

# combining lists
# so that list can hold another list

double.list <- c(my.named.list, my.named.list)
double.list

# get the structure of the list
str(my.named.list)
