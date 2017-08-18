install.packages("dplyr")
install.packages("readr")
install.packages("ggplot2")

library(dplyr)
library(ggplot2)

# read in data
checkouts <- read_csv("https://s3.amazonaws.com/somrc-workshop-data/checkouts.csv")

# basic exploration
head(checkouts)
str(checkouts)
summary(checkouts)

# how many unique items are there?
checkouts %>%
  distinct(Title) %>%
  nrow()

