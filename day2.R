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