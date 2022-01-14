# AND OPERATOR

x <- 10
(x < 20) & (x > 5)
(x < 20) & (x > 5) & (x == 10)
(x < 20) & (x > 5) & (x == 9)
TRUE & TRUE
TRUE & FALSE

# OR OPERATOR

x == 100
x == 10

(x == 100) | (x == 10)
(x == 100) | (x == 10000)

# NOT OPERATOR

(10 == 1)
(10 != 1)
!(10 == 1)
!!(10 == 1)

df <- mtcars
head(df)

df[df$mpg > 20,]

df[df$mpg > 20, 'mpg']

subset(df, mpg > 20)

df[df$mpg > 20 & df$hp > 100,]
df[(df$mpg > 20) & (df$hp > 100),]

df[(df$mpg > 20) | (df$hp > 100),]
