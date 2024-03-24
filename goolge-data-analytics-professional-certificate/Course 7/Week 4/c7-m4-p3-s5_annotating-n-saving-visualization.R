library(ggplot2)
library(palmerpenguins)
library(tidyverse)


# Your stakeholder tells you that they would like you to create a visualization
# that compares market segments between city hotels and resort hotels.
# This will help inform how the company targets promotions in the future.
# They ask you to create a cleaned and labeled version and save it as a .png file so they can include it in a presentation.
# As a refresher, here a chart similar to what you created in a previous activity:

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap( ~ hotel) +
  # add title, sub-title
  labs(title = "Market segment between 'City Hotel' and 'Resort Hotel'")

## get the min, max to show the date range of the data in plot
mindate <- min(hotel_bookings$arrival_date_year)
maxdate <- max(hotel_bookings$arrival_date_year)

## add date range to sub-titles
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap( ~ hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       subtitle = paste0("Data from: ", mindate, " to ", maxdate))

## You realize that this chart is displaying the technical details a little too prominently.
# You don't want that to be the second thing people notice during the presentation.
# You decide to switch the subtitle to a caption which will appear in the bottom right corner instead.
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap( ~ hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title = "Comparison of market segments by hotel type for hotel bookings",
       caption = paste0("Data from: ", mindate, " to ", maxdate))

## Now you want to clean up the x and y axis labels to make sure they are really clear.
## To do that, you can add to the labs() function and use x= and y=.
#Feel free to change the text of the label and play around with it:
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap( ~ hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(
    title = "Comparison of market segments by hotel type for hotel bookings",
    caption = paste0("Data from: ", mindate, " to ", maxdate),
    x = "Market Segment",
    y = "Number of Bookings"
  )

# use the ggsave() function to do just that! It will save your image as a 7x7 at the file path you input by default,
# which makes it simple to export your plots from R.
# The ggsave() function in the code chunk below will save the last plot that was generated,
# so if you ran something after running the code chunk above, run that code chunk again.
# Then run the following code chunk to save that plot as a .png file named hotel_booking_chart,
# which makes it clear to your stakeholders what the .png file contains.
#Now you should be able to find this file in your 'Files' tab in the bottom right of your screen. Check it out!
setwd("goolge-data-analytics-professional-certificate/Course 7/Week 4/")
ggsave('hotel_booking_chart.png',
       width = 7,
       height = 7)


ggplot(data = penguins) +
  geom_bar(mapping = aes(x = flipper_length_mm), color= 'purple')
  