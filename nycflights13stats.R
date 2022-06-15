
install.packages("tidyverse")
install.packages("lm.beta")
install.packages("nycflights13")
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(nycflights13))
suppressPackageStartupMessages(library(lm.beta))

Q1 <- 
  (nrow(flights)- length(nycflights13_out1))/nrow(flights)*100
Q1

Q2 <-
  cor.test(flights$dep_delay, flights$distance)

Q2

Q3 <- 
  lm(formula = dep_delay ~ distance, data = flights)
Q3

Q4 <- 
  lm.beta(Q3)
Q4

Q5 <- 
  lm(formula =dep_delay ~ distance + carrier, data = flights)
Q5
