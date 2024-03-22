setwd(dir = "goolge-data-analytics-professional-certificate/Course 7/Week 4/")

hotel_bookings <- read.csv("hotel_bookings.csv")

head(hotel_bookings)

colnames(hotel_bookings)

library(ggplot2)


# A stakeholder tells you, "I want to target people who book early,
# and I have a hypothesis that people with children have to book in advance."
# On the x-axis, the plot shows how far in advance a booking is made, 
# with the bookings furthest to the right happening the most in advance.
# On the y-axis it shows how many children there are in a party.
# The plot reveals that your stakeholder's hypothesis is incorrect. 
#You report back to your stakeholder that many of the advanced bookings are being made by people with 0 children.
ggplot(data = hotel_bookings) +
  geom_point(
    mapping = aes( x = lead_time, y = children)
  )


# your stakeholder says that she wants to increase weekend bookings, 
# an important source of revenue for the hotel. 
# Your stakeholder wants to know what group of guests book the most weekend nights
# in order to target that group in a new marketing campaign.
# She suggests that guests without children book the most weekend nights. 
# Is this true?
ggplot(data = hotel_bookings) +
  geom_point(
    mapping = aes( x = stays_in_weekend_nights, y = children)
  )
