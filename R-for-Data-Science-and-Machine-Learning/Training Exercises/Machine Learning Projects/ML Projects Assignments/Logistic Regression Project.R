adult <- read.csv("../CSV files for ML Projects/adult_sal.csv")
print(head(adult))

# removing extra index column (X)
library(dplyr)

adult <- select(adult, -X)
print(head(adult))

print(str(adult))
print("    ")
print(summary(adult))

# check the freq of the employer type using table()

table(adult$type_employer)

# na value  == ?

### DATA CLEANING

# Combine Employer type

unemp <- function(job) {

  job <- as.character(job)
  
  if(job == "Never-worked" | job == "Without-pay") {
    return("Unemployed")
  } else {
    return (job)
  }
}

### APPLY
adult$type_employer <- sapply(adult$type_employer, unemp)
print(table(adult$type_employer))

# COMBINING SELF EMPLOYMENTS AND GOVERNMENTS

group_emp <- function(job) {
  
  if(job == "Local-gov" | job == "State-gov") {
    return("SL-gov")
  } else if (job == "Self-emp-inc" | job == "Self-emp-not-inc") {
    return("self-emp")
  } else {
    return (job)
  }
}

adult$type_employer <- sapply(adult$type_employer, group_emp)
print(table(adult$type_employer))

### MARITAL STATUS

print(table(adult$marital))

# GROUPING

group_marital <- function(mar) {
  
  mar <- as.character(mar)
  
  if(mar == "Separated" | mar == "Divorced" | mar == "Widowed") {
    return("Not-Married")
    
  } else if (mar == "Never-married") {
    return(mar)
    
  } else {
    return ("Married")
  }
}


### APPLY

adult$marital <- sapply(adult$marital, group_marital)

print(table(adult$marital))

#### COUNTRY COLUMN DATA CLEAN

Asia <- c('China','Hong','India','Iran','Cambodia','Japan', 'Laos' ,
          'Philippines' ,'Vietnam' ,'Taiwan', 'Thailand')

North.America <- c('Canada','United-States','Puerto-Rico' )

Europe <- c('England' ,'France', 'Germany' ,'Greece','Holand-Netherlands','Hungary',
            'Ireland','Italy','Poland','Portugal','Scotland','Yugoslavia')

Latin.and.South.America <- c('Columbia','Cuba','Dominican-Republic','Ecuador',
                             'El-Salvador','Guatemala','Haiti','Honduras',
                             'Mexico','Nicaragua','Outlying-US(Guam-USVI-etc)','Peru',
                             'Jamaica','Trinadad&Tobago')
Other <- c('South')



group_country <- function(ctry){
  if (ctry %in% Asia){
    return('Asia')
  }else if (ctry %in% North.America){
    return('North.America')
  }else if (ctry %in% Europe){
    return('Europe')
  }else if (ctry %in% Latin.and.South.America){
    return('Latin.and.South.America')
  }else{
    return('Other')      
  }
}

adult$country <- sapply(adult$country, group_country)

print(table(adult$country))

str(adult)

adult$type_employer <- factor(adult$type_employer)
adult$education <- factor(adult$education)
adult$marital <- factor(adult$marital)
adult$occupation <- factor(adult$occupation)
adult$relationship <- factor(adult$relationship)
adult$race <- factor(adult$race)
adult$sex <- factor(adult$sex)
adult$country <- factor(adult$country)
adult$income <- factor(adult$income)

print(str(adult))

### MISSING DATA

library(Amelia)

### '?' to nan value

adult[adult == "?"] <- NA

# factor again

adult$type_employer <- factor(adult$type_employer)
adult$education <- factor(adult$education)
adult$marital <- factor(adult$marital)
adult$occupation <- factor(adult$occupation)
adult$relationship <- factor(adult$relationship)
adult$race <- factor(adult$race)
adult$sex <- factor(adult$sex)
adult$country <- factor(adult$country)
adult$income <- factor(adult$income)

print(table(adult$type_employer))

### missmap from amelia
missmap(adult, col = c("yellow", "black"))

missmap(adult, col = c("yellow", "black"), y.at=c(1), y.labels = c(""))

# DROP MISSING DATA
adult <- na.omit(adult)

### reset adult

missmap(adult, col = c("yellow", "black"), y.at=c(1), y.labels = c(""))


# EDA

library(ggplot2)
library(dplyr)

ggplot(adult, aes(age)) + geom_histogram(aes(fill = income), color = "black", binwidth = 1) + theme_bw()

ggplot(adult, aes(hr_per_week)) + geom_histogram() + theme_bw()

# RENAME COUNTRY TO REGION

# new_col_name = old_col_name 
adult <- rename(adult, region = country)

print(head(adult))

pl <- ggplot(adult, aes(region)) + geom_bar(aes(fill = income), color = "black") + theme_bw()
print(pl)

#### LOGISTIC REGRESSION MODEL

# train-test split

library(caTools)

set.seed(101)

sample <- sample.split(adult$income, SplitRatio = 0.7)

train <- subset(adult, sample == T )

test <- subset(adult, sample == F)

help(glm)

# use all features to predict the outcome (income)
model <- glm(income ~ ., family = binomial(link = "logit"), data = train)

summary(model)

# step function
# ignoring non-significant features in model
new.step.model <- step(model)

print(summary(new.step.model))

test$predicted.income <- predict(model, newdata = test, type = "response")

# creating the confusion matrix

table(test$income, test$predicted.income > 0.5)

acc <- (6372 + 1423) / (6372 + 548 + 872 + 1423)

print(acc)

# recall
6372 / (6372 + 548)

# precision
6372 / (6372 + 872)

























































