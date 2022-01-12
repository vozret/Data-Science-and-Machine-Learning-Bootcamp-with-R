# EX 1

Age <- c(22, 25, 26)
Weight <- c(150, 165, 120)
Sex <- c('M', 'M', 'F')

df <- data.frame(Age, Weight, Sex, row.names = c('Sam', 'Frank', 'Amy'))
df

# EX 2
is.data.frame(mtcars)

# EX 3
mat <- matrix(1:25, nrow = 5)
mat <- as.data.frame(mat)
mat

# EX 4
df <- mtcars

# EX 5
head(df, 6)

# EX 6
ave(df$mpg)

# EX 7
subset(df, cyl == 6)

# EX 8
df[, c('am', 'gear', 'carb')]

# EX 9
df$performance <- df$hp / df$wt
head(df)

# EX 10
df$performance <- round(df$performance, 2)
head(df)

# EX 11
ave(df[(df$hp > 100) & (df$wt > 2.5), 'mpg'])

# EX 12
df['Hornet Sportabout', 'mpg']
