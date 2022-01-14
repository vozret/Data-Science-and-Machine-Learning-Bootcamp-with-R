# if
x <- 13
if(x == 10){
  print('x is equal to 10!')
} else if(x == 12) {
  print('x is equal to 12!')
} else {
  print('x was not equal to 10 or 12!')
}

hot <- FALSE
temp <- 10

if(temp > 80) {
  print('Temp is grater than 80')
  hot <- TRUE
}

print(hot)


ham <- 5
cheese <- 10
report <- 'blank'

if (ham >= 10 & cheese >= 10) {
  report <- 'Strong sales of both ham and cheese'
} else if (ham == 0 & cheese == 0) {
  report <- 'No sales today'
} else {
  report <- "We sold something today"
}

print(report)

