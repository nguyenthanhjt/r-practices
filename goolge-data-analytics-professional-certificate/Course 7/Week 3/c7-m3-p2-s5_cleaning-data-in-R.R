#  installing the required packages
install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

# load libraries
library(tidyverse)
library(skimr)
library(janitor)

# read data

bookings_df <- read_csv("hotel_bookings.csv")

## Getting to know data
head(booking_df)

str(bookings_df)

glimpse(bookings_df)

colnames(bookings_df)

skim_without_charts(bookings_df)

# Cleaning data

trimmed_df <- bookings_df %>%
  select(hotel, is_canceled, lead_time) %>%
  rename(hotel_type = hotel)

head(trimmed_df)

# combine the arrival month and year into one column using the unite() fn
example_df <- bookings_df %>%
  select(arrival_date_year, arrival_date_month) %>%
  unite(arrival_year_month,
        c("arrival_date_month", "arrival_date_year"),
        sep = " ")
head(example_df)

# SUm total the quantity of people on a reservation (include: adults, children, babies)
total_people <- bookings_df %>%
  mutate(guests = adults  + children + babies)
head(total_people)

str(total_people)

# calculate total number of canceled bookings, average lead time for booking
cancel_booking <- bookings_df %>%
  summarise(canceled_qty = sum(is_canceled),
            avg_lead_time = mean(lead_time))
head(cancel_booking)

glimpse(ToothGrowth)
colnames(ToothGrowth)