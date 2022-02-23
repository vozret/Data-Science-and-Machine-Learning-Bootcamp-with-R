# How a date object looks like in R

# Year-Month-Date
Sys.Date()

today <- Sys.Date()
class(today)

c <- "1990-01-01"
class(c)

my.date <- as.Date(c)
class(my.date)

# when date is not in the standard format

as.Date("Nov-03-1990")

# inače vraća kako triba, neki je problem u sustavu za R
my.date <- as.Date("Nov-03-1990", format = "%b-%d-%y")
my.date



# Code	Value
# %d	Day of the month (decimal number)
# %m	Month (decimal number)
# %b	Month (abbreviated)
# %B	Month (full name)
# %y	Year (2 digit)
# %Y	Year (4 digit)

# WORKING WITH TIMESTAMPS
# when working with timeseries

as.POSIXct("11:01:03", format="%H:%M:%S")

# we will probably use strptime() function the most
# for conversion to and from date - string

strptime("11:02:03", format="%H:%M:%S")
# strptime("Nov-03-1990", format="%b-%d-%Y") - isto ne radi




