goog <- c(450, 451, 452, 445, 468)
msft <- c(230, 231, 232, 233, 220)

stocks <- c(goog, msft)

stock.matrix <- matrix(stocks, byrow = T, nrow = 2)

days <- c("Mon", "Tue", "Wed", "Thu", "Fri")
st.names <- c("GOOG", "MSFT")

colnames(stock.matrix) <- days
rownames(stock.matrix) <- st.names

# sum the columns together
colSums(stock.matrix)

# sum the rows together
rowSums(stock.matrix)

# mathematical operations
# row means
rowMeans(stock.matrix)

# columns means
colMeans(stock.matrix)

# add columns and rows to a matrix
# sbind and rbind functions

FB <- c(111, 112, 113, 120, 145)

# binding rows
# FB was used as a new row name
tech.stocks <- rbind(stock.matrix, FB)
tech.stocks

avg <- rowMeans(tech.stocks)
avg

# binding columns
tech.stocks <- cbind(tech.stocks, avg)
tech.stocks
