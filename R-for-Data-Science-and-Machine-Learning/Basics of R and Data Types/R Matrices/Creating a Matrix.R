1:10
v <- 1:10

# creating a matrix
matrix(v)

# specifying a number of rows
matrix(v, nrow = 2)

# we could've filled rows first
matrix(1:12, nrow = 4, byrow = FALSE)

matrix(1:12, nrow = 4, byrow = TRUE)

# creating matrices from many vectors
goog <- c(450, 451, 452, 445, 468)
msft <- c(230, 231, 232, 233, 220)

stocks <- c(goog, msft)

stocks

stock.matrix <- matrix(stocks, byrow = T, nrow = 2)
stock.matrix

# naming rows and columns

days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
st.names <- c("GOOG", "MSFT")

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

stock.matrix
