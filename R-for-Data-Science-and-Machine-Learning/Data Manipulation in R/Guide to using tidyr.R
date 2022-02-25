# install.packages('tidyr')
# install.packages("data.table") -> extends data frames, cleaner and faster operations

library(tidyr)
library(data.table)

# gather()
# collapse multiple columns into key-pair values

comp <- c(1,1,1,2,2,2,3,3,3)
yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
q1 <- runif(9, min=0, max=100)
q2 <- runif(9, min=0, max=100)
q3 <- runif(9, min=0, max=100)
q4 <- runif(9, min=0, max=100)

df <- data.frame(comp=comp,year=yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)

gather(df, Quarter, Revenue, Qtr1:Qtr4)

df %>% gather(Quarter, Revenue, Qtr1:Qtr4)

# spread()
# opposite of gather

stocks <- data.frame(
  time = as.Date('2009-01-01') + 0:9,
  X = rnorm(10, 0, 1),
  Y = rnorm(10, 0, 2),
  Z = rnorm(10, 0, 4)
)
stocks

stocks.gathered <- stocks %>% gather(stock, price, X:Z)
head(stocks.gathered)

stocks.gathered %>% spread(stock, price)

spread(stocks.gathered, time, price)

# separate() -> single character column to multiple columns
# it will try to separate by non alpha-numeric characters

df <- data.frame(x = c(NA, "a.x", "b.y", "c.z"))
df

separate(df, x, c('ABC', "XYZ"))

df <- data.frame(x = c(NA, "a-x", "b-y", "c-z"))
df

separate(data=df, col = x, into = c("abc", "xyz"), sep = "-")

# unite() -> paste together multiple columns into one

df.sep <- separate(data=df, col = x, into = c("abc", "xyz"), sep = "-")
df.sep

unite(df.sep, new.joined.col, abc, xyz)

unite(df.sep, new.joined.col, abc, xyz, sep = "---")

















