# R Functions Exercises

# Create a function that will return the product of two integers.

prod <- function(x, y) {
  return (x * y)
}

prod(3, 4)

# Create a function that accepts two arguments, an integer and a vector of integers.
# It returns TRUE if the integer is present in the vector, otherwise it returns FALSE.
# Make sure you pay careful attention to your placement of the return(FALSE) line in your function!

superFunction <- function(int, vec) {
  if (int %in% vec) {
    return (T)
  } else {
    return (F)
  }
}

# Create a function that accepts two arguments, an integer and a vector of integers.
# It returns the count of the number of occurences of the integer in the input vector.

monsterFunction <- function(int, vec) {
  occurences <- length(which(vec == int))
  return (occurences)
}

#  We want to ship bars of aluminum. We will create a function that accepts an integer representing the requested kilograms of
# aluminum for the package to be shipped. To fullfill these order, we have small bars (1 kilogram each) and
# big bars (5 kilograms each). Return the least number of bars needed.

aluminum <- function(kgs) {
  ones <- kgs %% 5
  fives <- (kgs - ones)/5
  return (ones + fives)
}

# Create a function that accepts 3 integer values and returns their sum. However, if an integer value is evenly divisible by 3,
# then it does not count towards the sum. Return zero if all numbers are evenly divisible by 3.
# Hint: You may want to use the append() function.

?append()

megaReturner <- function(x, y, z) {
  if (x %% 3 != 0) {
    vector <- append(x, vector)
  }
  if (y %% 3 != 0) {
    vector <- append(y, vector)
  }
  if (z %% 3 != 0) {
    vector <- append(z, vector)
  }
  return (sum(vector))
}

# Create a function that will return TRUE if an input integer is prime. Otherwise, return FALSE.

primeChecker <- function(number) {
  if (number == 2) {
    return (TRUE)
  }
  for (i in 2:(number - 1)) {
    if (number %% i == 0) {
      return (FALSE)
    }
  }
  return (TRUE)
}
