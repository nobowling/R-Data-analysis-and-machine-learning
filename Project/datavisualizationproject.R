install.packages("ggplot2")
library(ggplot2)
library(readr)

# Import csv and drop unneeded first column
df <- read_csv("R-Course-HTML-Notes/R-for-Data-Science-and-Machine-Learning/Training Exercises/Capstone and Data Viz Projects/Data Visualization Project/Economist_Assignment_Data.csv")
df <- df[,-1]

# Make plot of data set + add some styling
pl <- ggplot(df, aes(x=CPI, y=HDI)) + geom_point(aes(color = Region), shape = 1, size = 4)

# Add trend line + little styling
pl2 <- pl + geom_smooth(aes(group = 1), method = 'lm', formula = y ~ log(x), se = FALSE, color = 'red')

# Add labels (only subset of countries)
pointsToLabel <- c("Russia", "Venezuela", "Iraq", "Myanmar", "Sudan",
                   "Afghanistan", "Congo", "Greece", "Argentina", "Brazil",
                   "India", "Italy", "China", "South Africa", "Spane",
                   "Botswana", "Cape Verde", "Bhutan", "Rwanda", "France",
                   "United States", "Germany", "Britain", "Barbados", "Norway", "Japan",
                   "New Zealand", "Singapore")

pl3 <- pl2 + geom_text(aes(label = Country), color = "gray20", data = subset(df, Country %in% pointsToLabel),check_overlap = TRUE)

# Add theme

pl4 <- pl3 + theme_bw()

pl5 <- pl4 + scale_x_continuous(name = 'Corrupt perceptions index', limits = c(1, 10), breaks = 1:10) +
  scale_y_continuous(name = 'Human development index', limits = c(0.25, 1), breaks = seq(from = 0, to = 1, by = 0.1))

pl6 <- pl5 + ggtitle('Corruption perceptions and human development index') +
  theme(plot.title = element_text(hjust = 0.5))

pl6
