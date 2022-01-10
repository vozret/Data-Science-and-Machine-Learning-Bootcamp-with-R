# EX 1
2 ^ 5

# EX 2
stock.prices <- c(23, 27, 23, 21, 34)

# EX 3

days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
names(stock.prices) <- days
stock.prices

# EX 4
mean(stock.prices)

# EX 5
over.23 <- stock.prices > 23

# EX 6
stock.prices[over.23]

# EX 7
max.price <- stock.prices == max(stock.prices)
stock.prices[max.price]
