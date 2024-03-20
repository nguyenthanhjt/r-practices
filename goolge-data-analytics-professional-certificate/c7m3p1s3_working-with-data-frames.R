library(ggplot2) ## load

data("diamonds") ## load dataset

View(diamonds) ## preview the dataset

head(diamonds) ## preview the first 6 rows

str(diamonds) ## get structure of data frame

colnames(diamonds) ## Get columns' names


## make changes to  data frame (part of dplyr package in the `tidyverse`)
library(tidyverse)
mutate(diamonds, carat_2=carat*100)

