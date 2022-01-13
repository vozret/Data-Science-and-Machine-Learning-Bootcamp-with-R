# writing to csv
write.csv(mtcars, file="example_csv.csv")

# reading in a csv file
ex = read.csv('example.csv')
ex

head(ex)
tail(ex)
class(ex)

# write to csv
write.csv(ex, file="my_new_example_csv.csv")

