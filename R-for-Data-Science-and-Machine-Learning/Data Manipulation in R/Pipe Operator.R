library(dplyr)

df <- mtcars

# nesting
# difficult to read
result <- arrange(sample_n(filter(df, mpg > 20), size=5), desc(mpg))

print(result)

# multiple assignments
# wasting a lot of space in memory

a <- filter(df, mpg > 20)
b <- sample_n(a, size=5)
result <- arrange(b, desc(mpg))

# pipe operator

# Data %>% op1 %>% op2 %>% op3...

result <- df %>% filter(mpg>20) %>% sample_n(size=5) %>% arrange(desc(mpg))

print(result)
