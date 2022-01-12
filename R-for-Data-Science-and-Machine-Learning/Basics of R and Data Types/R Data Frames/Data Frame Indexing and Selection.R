days <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri')
temp <- c(22.2, 21, 23, 24.3, 25)
rain <- c(T, T, F, F, T)

df <- data.frame(days, temp, rain)

df

# indexing
# all columns from the first row
df[1,]

# all rows from the first column
df[,1]

# we can label our rows and columns by some character names
# all rain values
df[,'rain']

# first five rows for days and temps
df[1:5, c('days', 'temp')]

# dollar sign notation
# we get only the vector with values
df$days

# bracket notation
# we keep the indexed notation
df['days']

# to grab a subset based on some condition
# grab the data when it rained
# subset argument expects some condition, it knows we will be referring to column name
# so the quotes aren't necessary
subset(df, subset = rain == T)

# temp > 23
subset(df, subset = temp > 23)

# ordering a data frame
sorted.temp <- order(df['temp'])
# sorted temperatures by index!
# sorted.temp consists of sorted indices
sorted.temp

df[sorted.temp,]

# descending order
desc.temp <- order(-df['temp'])

df[desc.temp,]

# we could use the dollar sign notation
desc.temp <- order(-df$temp)
df[desc.temp,]
