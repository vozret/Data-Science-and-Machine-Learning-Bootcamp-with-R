animal <- c('d', 'c', 'd', 'c', 'c')
id <- c(1,2,3,4,5)

# animal vector into vector of categories 
# nominal categorical variables don't have any order
factor(animal)

fact.ani <- factor(animal)


# ordinal -> there is an order
ord.cat <- c('cold', 'med', 'hot')

temps <- c('cold', 'med', 'hot', 'hot', 'hot', 'cold', 'med')

fact.temp <- factor(temps, ordered = T, levels = c('cold', 'med', 'hot'))
fact.temp

summary(fact.temp)

summary(temps)
