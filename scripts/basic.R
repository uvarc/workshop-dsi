# install and load packages
# nb dplyr and readr should be installed during bootstrapping
# install.packages("dplyr")
# install.packages("readr")
install.packages("ggplot2")

library(dplyr)
library(readr)
library(ggplot2)

# read in data
checkouts <- read_csv("~/checkouts.csv")

# basic exploration
head(checkouts)
summary(checkouts)
str(checkouts)
glimpse(checkouts)

# how many unique items are there?
checkouts %>%
  distinct(Title) %>%
  nrow()
  
length(unique(checkouts$Title))

# what are the top 10 items ever?
top10 <-
  checkouts %>%
  group_by(Title) %>%
  summarise(totchecks = sum(Checkouts)) %>%
  arrange(desc(totchecks)) %>%
  head(10)

top10

# how many items of each type were checked out each year?
checkouts %>%
  filter(!grepl(",", MaterialType)) %>%
  group_by(CheckoutYear, MaterialType) %>%
  summarise(Total = sum(Checkouts))
  
# what month typically has the most video checkouts?
bymonth <-
  checkouts %>%
  rename(Year = CheckoutYear, Format = MaterialType, Month = CheckoutMonth) %>%
  mutate(Format = ifelse(grepl("VIDEO", Format), "VIDEO", Format)) %>%
  filter(Format == "VIDEO") %>%  
  group_by(Month, Year) %>%
  summarise(totcheckouts = sum(Checkouts)) %>%
  ungroup() %>%
  group_by(Month) %>%
  summarise(Average = mean(totcheckouts))

# a plot?
ggplot(bymonth, aes(Month, Average)) +
  geom_bar(stat = "identity") +
  scale_x_continuous(breaks = 1:12) +
  theme_minimal()

# how about trends for books, ebooks and videos?
keepers <- c("VIDEO", "BOOK", "EBOOK")

byyear <-
  checkouts %>%
  rename(Year = CheckoutYear, Format = MaterialType) %>%
  mutate(Format = ifelse(grepl("VIDEO", Format), "VIDEO", Format)) %>%
  filter(Format %in% keepers) %>%
  group_by(Year, Format) %>%
  summarise(Total = sum(Checkouts))

# a plot?
ggplot(byyear, aes(Year, Total, group = Format)) +
  geom_line(aes(col = Format)) +
  scale_x_continuous(breaks = 2005:2017) +
  theme_minimal()