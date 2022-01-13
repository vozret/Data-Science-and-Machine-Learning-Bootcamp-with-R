# importing library
# install.packages('readxl')
library(readxl)

# this will list the sheet of the excel file
excel_sheets("Sample-Sales-Data.xlsx")

# read excel file as a data frame
df = read_excel('Sample-Sales-Data.xlsx', 'Sheet1')
head(df)

sum(df$Value)

summary(df)

# if there were multiple sheets
# each item in the list would be excel sheet -> df

# lapply -> apply functions over and over again across entire iterable object
entire.workbook = lapply(excel_sheets('Sample-Sales-Data.xlsx'), read_excel, path='Sample-Sales-Data.xlsx')
entire.workbook

class(entire.workbook)

# writing to excel files
# install.packages('xlsx')

library(xlsx)

head(mtcars)

write.xlsx(mtcars, 'mtcars_to_excel.xlsx')

# we won't be able import any code from excel
# only information