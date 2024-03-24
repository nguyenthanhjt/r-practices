hotel_bookings <- read.csv("goolge-data-analytics-professional-certificate/Course 7/Week 4/Solutions/hotel_bookings.csv")
View(hotel_bookings)
head(hotel_bookings)
colnames(hotel_bookings)
# install.packages('ggplot2') # run this if not install yet
library(ggplot2)
install.packages('tidyverse')
library(tidyverse)

# Earlier, you created a scatterplot to explore the relationship between booking lead time and guests traveling with children.
# As a refresher, here's the code:
ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# Your stakeholder asked about the group of guests who typically make early bookings, and this plot showed that many of these guests do not have children.
# Now, your stakeholder wants to run a family-friendly promotion targeting key market segments. 
# She wants to know which market segments generate the largest number of bookings, and where these bookings are made (city hotels or resort hotels).
# First, you decide to create a bar chart showing each hotel type and market segment. You use different colors to represent each market segment:
  
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))

# fter creating this bar chart, you realize that it's difficult to compare the size of the market segments at the top of the bars. You want your stakeholder to be able to clearly compare each segment.
# You decide to use the facet_wrap() function to create a separate plot for each market segment. In the parentheses of the facet_wrap() function, add the variable 'market_segment' after the tilde symbol (~):
  
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap( ~ market_segment)

# After considering all the data, your stakeholder decides to send the promotion to families that make online bookings for city hotels. The online segment is the fastest growing segment, and families tend to spend more at city hotels than other types of guests.
# Your stakeholder asks if you can create a plot that shows the relationship between lead time and guests traveling with children for online bookings at city hotels. This will give her a better idea of the specific timing for the promotion.
# You think about it, and realize you have all the tools you need to fulfill the request. You break it down into the following two steps: 1) filtering your data; 2) plotting your filtered data.
# For the first step, you can use the filter() function to create a data set that only includes the data you want. Input 'City Hotel' in the first set of quotation marks and 'Online TA' in the second set of quotations marks to specify your criteria:
  
onlineta_city_hotels <- filter(hotel_bookings,
                               (hotel == "City Hotel" &
                                  hotel_bookings$market_segment == "Online TA"))
View(onlineta_city_hotels)

## use pipi to filter keep booking with hotel = 'City Hotel' and market_segment = 'Online TA'
onlineta_city_hotels_v2 <- hotel_bookings %>%
  filter(hotel == "City Hotel") %>%
  filter(market_segment == "Online TA")

View(onlineta_city_hotels_v2)
colnames(onlineta_city_hotels_v2)
## create scatter plot to show relationship between [lead time] and [guests traveling with children]

ggplot(data = onlineta_city_hotels_v2) +
  geom_point(mapping = aes(x=lead_time, y=children))
# Based on your previous filter, this scatterplot shows data for online bookings for city hotels.
# The plot reveals that bookings with children tend to have a shorter lead time, 
# and bookings with 3 children have a significantly shorter lead time (<200 days). 
# So, promotions targeting families can be made closer to the valid booking dates.



