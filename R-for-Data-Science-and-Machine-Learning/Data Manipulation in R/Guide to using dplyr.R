# dplyr for manipulating data

# install.packages("dplyr")

# install package data
# install.packages("nycflights13")

library(dplyr)

# Attaching package: ‘dplyr’

# The following objects are masked from ‘package:stats’:
  
# filter, lag

# The following objects are masked from ‘package:base’:
  
# intersect, setdiff, setequal, union


library(nycflights13)

head(flights)

summary(flights)


# filter() (and slice())
# arrange()
# select() (and rename())
# distinct()
# mutate() (and transmute())
# summarise()
# sample_n() and sample_frac()

# filter and slice
# when we call filter in this script, filter from dplyr 
# library will be called by default
head(filter(flights, month == 11, day==3, carrier=="AA"))

# with ordinary bracket notation:
head(flights[flights$month==11 & flights$day==3 & flights$carrier == "AA", ])

# slice functions
# returns rows by position
slice(flights, 1:10)

# arrange
# reorders the rows, similar to filter function
# arrange(data, columns by which we want to order the data by)

# first order by year, then by month, then by the day and then by the arrival time

head(arrange(flights, year, month, day, arr_time))

# descending arrival time
head(arrange(flights, year, month, day, desc(arr_time)))

# select
# select columns

head(select(flights, carrier))
head(select(flights, carrier, arr_time))

# rename
# quickly rename columns
# rename(data, new_col_name = old_col_name)

head(rename(flights, airline_carrier = carrier))

# distinct
# select distinct (unique) values from row or column

distinct(select(flights, carrier))

# mutate
# add new columns that are functions of existing columns

head(mutate(flights, new_col = arr_delay - dep_delay))

# transmute
# if we only want to return the new column(s) back (when using mute)

head(transmute(flights, new_col = arr_delay - dep_delay))

# summarise
# quickly collapse data frames into single rows using some sort of function
# that aggregates the result

# na.rm -> remove NaN values when calculating the mean
summarise(flights, avg_air_time = mean(air_time, na.rm = TRUE))

summarise(flights, total_air_time = sum(air_time, na.rm = TRUE))

# sample_n and sample_frac
# returns random number or fraction (percentage) of rows

sample_n(flights, 10)

# 10% of the rows
sample_frac(flights, 0.1)













































