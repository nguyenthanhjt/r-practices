install.packages("tidyverse")

library(tidyverse)

# set working directory
setwd(dir = "./goolge-data-analytics-professional-certificate/Course 7/Week 3/")

# read and assign csv data to a dataframe
booking_df <- read_csv("hotel_bookings.csv")

# inpect dataframe
head(booking_df)

str(booking_df)

colnames(booking_df)

# create new DF to working with
new_df <- select(booking_df, `adr`, adults)

# modify df to create a new column for calculation

mutate(new_df, total = adr/adults)