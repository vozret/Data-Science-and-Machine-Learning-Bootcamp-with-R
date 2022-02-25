library(dplyr)

head(mtcars)

# EX 1
filter(mtcars, mpg > 20, cyl==6)

# EX 2
head(arrange(mtcars, cyl, desc(wt)))

# EX 3

head(select(mtcars, mpg, hp))

# EX 4

head(distinct(mtcars, gear))

# EX 5

head(mutate(mtcars, Performance = hp/wt))

# EX 6

summarise(mtcars, mpg_mean = mean(mpg), na.rm=TRUE)

# EX 7

mtcars %>% filter(cyl == 6) %>% summarise(hp_mean = mean(hp))
