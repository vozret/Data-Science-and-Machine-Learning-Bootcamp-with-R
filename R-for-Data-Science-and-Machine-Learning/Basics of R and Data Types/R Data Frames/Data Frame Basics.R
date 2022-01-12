state.x77

# data frames can have named rows and columns

USPersonalExpenditure
women

# list of all available data frames in R:
data()

# to take a peek at the bottom or start of the data frame
head(state.x77)
tail(state.x77)

# to see the structure of the data frame
str(state.x77)

# to see the statistics of the data
summary(state.x77)

# creating a data frame
days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(T, T, F, F, T)

data.frame(days, temp, rain)

df <- data.frame(days, temp, rain)
# column names are automatically set to be the names of the variables
df

str(df)
summary((df))
