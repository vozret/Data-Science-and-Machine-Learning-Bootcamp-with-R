batting <- read.csv("Batting.csv")
print(head(batting))

# check the structure
str(batting)

head(batting$AB)

head(batting$X2B)

# feature engineering
batting$BA <- batting$H / batting$AB
tail(batting$BA, 5)

# OBP
batting$OBP <- (batting$H + batting$BB + batting$HBP) / (batting$AB + batting$BB + batting$HBP + batting$SF)

tail(batting$OBP, 5)

#####
# CALCULATING SINGLES

batting$X1B <- batting$H - batting$X2B - batting$X3B - batting$HR

# SLUGGING PERCENTAGE
batting$SLG = (batting$X1B + 2*batting$X2B + 3*batting$X3B + 4*batting$HR) / batting$AB
str(batting)

sal <- read.csv("Salaries.csv")
summary(batting)

batting <- subset(batting, yearID >= 1985)
summary(batting)

# merging dfs
combo <- merge(batting, sal, by=c("playerID", "yearID"))

summary(combo)

# analysing lost players

lost_players <- subset(combo, playerID %in% c("giambja01", "damonjo01", "saenzol01"))
lost_players

lost_players <- subset(lost_players, yearID == 2001)

lost_players <- lost_players[,c("playerID", "H", "X2B", "X3B", "HR", "OBP", "SLG", "BA", "AB")]
lost_players

# find undervalued players
# 1469 AB
# AVG 0.364 OBP
# 15 million

combo <- subset(combo, yearID == 2001)
str(combo)

library(ggplot2)

ggplot(combo, aes(x=OBP, y=salary)) + geom_point(size=2)

combo <- subset(combo, salary < 8000000)
combo <- subset(combo, OBP > 0)

head(combo$OBP)
str(combo)

1469 / 3
# cut off bats at 450

combo <- subset(combo, AB >= 450)
str(combo)

library(dplyr)
# to quickly arrange what is left of combo

# on-base percentage
# descending order

head(arrange(combo, desc(OBP)), 10)

options <- head(arrange(combo, desc(OBP)), 10)

options[, c("playerID", "AB", "salary", "OBP")]

































