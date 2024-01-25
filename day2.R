#Intro
#Jan2024
#
#read in data
#load packages
library(dplyr)   #data manipulation
library(ggplot2) #plotting

#import data
go <- read.csv("data/GardenOzone.csv")

#look at the data
head(go)
glimpse(go)
str(go)

#plot data
p1 <- ggplot(go, aes(x= Ozone)) +
  geom_histogram(bins = 9) +
  facet_wrap(~Garden.location, ncol = 1) +
  expand_limits(x = 40) +
  scale_x_continuous(breaks = c(40,60,80))
p1

#summary statistics
SumStats <- go %>%
  group_by(Garden.location) %>%
  summarise(meanOz = mean(Ozone),
            varOz = var(Ozone))
SumStats

#t-test
t.test(Ozone ~ Garden.location, data = go)

