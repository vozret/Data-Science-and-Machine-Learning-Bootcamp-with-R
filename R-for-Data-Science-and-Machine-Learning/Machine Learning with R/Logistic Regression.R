### PART 1

# getting the titanic data
df.train <- read.csv("titanic_train.csv")
print(head(df.train))

print("           ")

print(str(df.train))

### EDA

# checking the missing data
# Amelia package

install.packages("Amelia")

library(Amelia)


# missingness map
help("missmap")

missmap(df.train, main = "Missing Map", col = c("yellow", "black"), legend = FALSE)

# visualizing the data
library(ggplot2)


# barplots 
ggplot(df.train, aes(Survived)) + geom_bar()


ggplot(df.train, aes(Pclass)) + geom_bar(aes(fill = factor(Pclass)))

ggplot(df.train, aes(Sex)) + geom_bar(aes(fill = factor(Sex)))

# histograms
ggplot(df.train, aes(Age)) + geom_histogram(bins = 20, alpha = 0.5, fill = "blue")

ggplot(df.train, aes(SibSp)) + geom_bar()

ggplot(df.train, aes(Fare)) + geom_histogram(fill = "green", color = "black", alpha = 0.5)

# cleaning and filling the missing data
pl <- ggplot(df.train, aes(Pclass, Age))
pl <- pl + geom_boxplot(aes(group = Pclass, fill=factor(Pclass), alpha = 0.4))

# scale_y_continuous - allows us to set numbers on the y axis
pl + scale_y_continuous(breaks = seq(min(0), max(80), by = 2)) + theme_bw()


######## IMPUTATION OF AGE BASED ON CLASS
# accepts age and class columns (vectors)
imputate_age <- function(age, class){
  out <- age
  
  for(i in 1:length(age)){
    
    if(is.na(age[i])) {
      
      if (class[i] == 1) {
        out[i] <- 37
        
      } else if (class[i] == 2) {
        out[i] <- 29
        
      } else {
        out[i] <- 24
        
      }
    } else {
      out[i] <- age[i]
      
    }
  }
  return(out)
}

fixed.ages <- imputate_age(df.train$Age, df.train$Pclass)


##### PART 2

df.train$Age <- fixed.ages

###
missmap(df.train, main = "Imputation check", col = c("yellow", "black"), legend = FALSE)

str(df.train)

library(dplyr)

# - -> columns i don't want to keep
df.train <- select(df.train, -PassengerId, -Name, -Ticket, -Cabin)

head(df.train)

str(df.train)

# almost everything to a factor type

df.train$Survived <- factor(df.train$Survived)
df.train$Pclass <- factor(df.train$Pclass)
df.train$Sex <- factor(df.train$Sex)
df.train$SibSp <- factor(df.train$SibSp)
df.train$Parch <- factor(df.train$Parch)
df.train$Embarked <- factor(df.train$Embarked)

str(df.train)

#### TRAINING THE MODEL

# glm -> # generalized linear model

log.model <- glm(Survived ~ . , family = binomial(link = "logit"), data = df.train)

# stars -> important features

summary(log.model)

# TESTING THE MODEL

library(caTools)

set.seed(101)

split <- sample.split(df.train$Survived, SplitRatio = 0.7)

final.train <- subset(df.train, split == TRUE)
final.test <- subset(df.train, split == FALSE)

final.log.model <- glm(Survived ~ ., family = binomial(link = "logit"), data = final.train)
summary(final.log.model)

fitted.probabilities <- predict(final.log.model, final.test, type = "response")

# shortened if-else statement
fitted.results <- ifelse(fitted.probabilities > 0.5, 1, 0)

misClass <- mean(fitted.results != final.test$Survived)
# accuracy
print(1 - misClass)

# confusion matrix

table(final.test$Survived, fitted.probabilities>0.5)



























