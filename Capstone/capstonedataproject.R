install.packages('ggplot2')
install.packages('plotly')
library(ggplot2)
library(readr)
library(dplyr)
library(plotly)
batting <- read_csv("R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/Training Exercises/Capstone and Data Viz Projects/Capstone Project/Batting.csv")

head(batting)
str(batting)
head(batting$AB)
head(batting$`2B`)

batting$BA <- batting$H / batting$AB
tail(batting$BA, 5)

# Add on base percentage
batting$OBP <- (batting$H + batting$BB + batting$HBP) / (batting$AB + batting$BB + batting$HBP + batting$SF)
# Add singles
batting$`1B` <- batting$H - batting$`2B` - batting$`3B` - batting$HR
# Add slugging percentage
batting$SLG <- ((1 * batting$`1B`) + (2 * batting$`2B`) + (3 * batting$`3B`) + (4 * batting$HR) ) / batting$AB

# Load salaries
salaries <- read_csv("R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/Training Exercises/Capstone and Data Viz Projects/Capstone Project/Salaries.csv")

# Filter out battings later than 1985
batting <- subset(batting, yearID >= 1985)

# Merge batting data and salaries by playerID and yearID
mergedDataFrame <- merge(batting, salaries, by = c('playerID', 'yearID'))

# Get lost boys data
lostBoys <- subset(mergedDataFrame, playerID %in% c('giambja01', 'damonjo01', 'saenzol01'))

# Get only year 2001
lostBoys <- subset(lostBoys, yearID == 2001)

# Reduce the columns to only wanted ones
wantedColumns <- c('playerID','H','2B','3B','HR','OBP','SLG','BA','AB')
lostBoys <- select(lostBoys, wantedColumns)
head(lostBoys)

# Find the replacement players

mergedDataFrame <- subset(mergedDataFrame, yearID == 2001)
maxSalary <- 15000000
maxAB <- sum(mergedDataFrame$AB, na.rm = TRUE)
lostBoysOBPMean <- mean(lostBoys$OBP)
lostBoysABTotal <- sum(lostBoys$AB, na.rm = TRUE)
# Plot some data cause I don't know what to do
mergedDataFrame <- select(mergedDataFrame, c('playerID', 'OBP', 'AB', 'salary'))
mergedDataFrame
