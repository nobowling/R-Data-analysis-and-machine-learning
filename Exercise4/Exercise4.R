# Conditional statement Exercises

# Write a script that prints "Hello" if the variable x is equal to 1:
if (x == 1) {
  print('Hello')
}

#  Write a script that will print "Even Number" if the variable x is an even number, otherwise print "Not Even":
x <- 3
if (x %% 2 == 0) {
  print('Even number')
} else {
  print('Not even')
}

# Write a script that will print 'Is a Matrix' if the variable x is a matrix, otherwise print "Not a Matrix".
# Hint: You may want to check out help(is.matrix)
x <- matrix()
if (is.matrix(x)) {
  print('Is matrix')
} else {
  print('Is not matrix')
}

# Create a script that given a numeric vector x with a length 3, will print out the elements in order from high to low.
# You must use if,else if, and else statements for your logic. (This code will be relatively long)

x <- c(1:3)
if (x[1] > x[2] & x[1] > x[3]) {
  max <- x[1]
} else if (x[2] > x[1] & x[2] > x[3]) {
  max <- x[2]
} else if (x[3] > x[1] & x[3] > x[2]) {
  max <- x[3]
}

x2 <- x[-max]

if (x2[1] > x2[2]) {
  mid <- x2[1]
  min <- x2[2]
} else {
  mid <- x2[2]
  min <- x2[1]
}

message('max: ', max, ' mid: ', mid, ' min: ', min)

# Write a script that uses if,else if, and else statements to print the max element in a numeric vector with 3 elements.

x <- c(1:3)
if (x[1] > x[2] & x[1] > x[3]) {
  max <- x[1]
} else if (x[2] > x[1] & x[2] > x[3]) {
  max <- x[2]
} else if (x[3] > x[1] & x[3] > x[2]) {
  max <- x[3]
}

message('max value: ', max)
