# grepl
# general regular expression

text <- "Hi there, do you know who you are voting for?"
text

# grepl(term we are searching for, object we want to search through)
grepl("voting", text)


# returns TRUE if the expression is in inside of text
# returns boolean value(s)

grepl("dog", text)
grepl("do you", text)

v <- c("a", "b", "c", "d", "d")
v

grepl("b", v)
# we get the vector back
# TRUE is on the index where the expression is TRUE

# grep() -> returns the index where the expression is found
# returns all the locations where the pattern ocurred
grep("b", v)
grep("d", v)

