install.packages("tidyverse")

library(tidyverse)

# There are a number of ways to do this;
# one of the most common is to create individual vectors of data
# and then combine them into a data frame using the data.frame() function.

# First, create a vector of names by inserting four names into this code block between the quotation marks and then run it:

names <- c("jt", "trangle", "thutrang", "jay")

# Then create a vector of ages by adding four ages separated by commas to the code chunk below. Make sure you are inputting numeric values for the ages or you might get an error.
age <- c(10, 13, 12, 16)

people <- data.frame(names, age)

# inspect the data frame

head(people)

str(people)

glimpse(people)

colnames(people)

#  use mutate() if you wanted to create a new variable that would capture each person's age in twenty years.

mutate(people, age_in_later_20_years = age + 20)

############PRACTICE########

fruits <- c("apple", "orange", "banana", "mango", "watermelon")

fruit_rank <- c("2", "3", "5", "4", "1")

my_fruits <- data.frame(fruits, fruit_rank)

head(my_fruits)
