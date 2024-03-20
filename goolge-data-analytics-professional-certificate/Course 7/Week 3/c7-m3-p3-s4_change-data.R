install.packages("tidyverse")
install.packages("skimr")
install.packages("janitor")

library(tidyverse)
library(skimr)
library(janitor)

hotel_bookings <- read_csv("hotel_bookings.csv")

head(hotel_bookings)
glimpse(hotel_bookings)
colnames(hotel_bookings)

# sort
arrange(hotel_bookings, desc(lead_time))

## assign sorted data set
hotel_bookings_v2 <-
  arrange(hotel_bookings, desc(lead_time))
head(hotel_bookings_v2)

## min, max

max(hotel_bookings$lead_time)
min(hotel_bookings$lead_time)
# avg
mean(hotel_bookings$lead_time)
mean(hotel_bookings_v2$lead_time)

# filter

city_hotel <-
  filter(hotel_bookings, hotel_bookings$hotel == "City Hotel")

head(city_hotel)

## summary

hotel_summary <- 
  hotel_bookings %>%
  group_by(hotel) %>%
  summarise(average_lead_time=mean(lead_time),
            min_lead_time=min(lead_time),
            max_lead_time=max(lead_time))

View(hotel_summary)
