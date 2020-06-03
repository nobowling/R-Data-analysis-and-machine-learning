# R Data Frames Exercises

# Recreate the following dataframe by creating vectors and using the data.frame function:

Age	Weight	Sex
Sam	22	150	M
Frank	25	165	M
Amy	26	120	F

names <- c('Sam', 'Frank', 'Amy')
male <- 'Male'
female <- 'Female'
other <- 'Other'

age <- c(22, 25, 26)
weight <- c(150, 165, 120)
assumedSex = c(male, male, female)

personDataFrame <- data.frame(age, weight, assumedSex)
row.names(personDataFrame) <- names

# Check if mtcars is a dataframe using is.data.frame()

is.data.frame(mtcars)

# Use as.data.frame() to convert a matrix into a dataframe:

matrix <- matrix(1:12, nrow = 4)
as.data.frame(matrix)

# Set the built-in data frame mtcars as a variable df. We'll use this df variable for the rest of the exercises.

df <- mtcars

# Display the first 6 rows of df

head(df)

# What is the average mpg value for all the cars?

mean(df$mpg)

# Select the rows where all cars have 6 cylinders (cyl column)

subset(df, cyl == 6)

# Select the columns am,gear, and carb.

subset(df, select = c(am, gear, carb))

# Create a new column called performance, which is calculated by hp/wt.

performance <- df$hp / df$wt
df$performance = performance

# Your performance column will have several decimal place precision. Figure out how to use round() (check help(round)) to reduce this accuracy to only 2 decimal places.

df$performance <- round(performance, 2)

# What is the average mpg for cars that have more than 100 hp AND a wt value of more than 2.5.

mean(df[df$hp>100 & df$wt > 2.5,]$mpg)

# What is the mpg of the Hornet Sportabout?

df['Hornet Sportabout',]$mpg
