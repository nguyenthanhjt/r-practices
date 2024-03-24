hotel_bookings <- read.csv("goolge-data-analytics-professional-certificate/Course 7/Week 4/Solutions/hotel_bookings.csv")
View(hotel_bookings)
head(hotel_bookings)
colnames(hotel_bookings)
# install.packages('ggplot2') # run this if not install yet
library(ggplot2)

# Your stakeholder is interested in developing promotions based on different booking distributions,
# but first they need to know how many of the transactions are occurring for each different distribution type.
# You can tell ggplot() what type of chart you want to create by using the geom_ argument.
# Previously, you used geom_point to make a scatter plot comparing lead time and number of children. 
# Now, you will use geom_bar to make a bar chart in this code chunk:

ggplot(data = hotel_bookings) +
  geom_bar(mapping =  aes(x = distribution_channel))

# your stakeholder has more questions. 
# Now they want to know if the number of bookings for each distribution type is different 
# depending on whether or not there was a deposit or what market segment they represent.
# Try modifying the code below to answer the question about deposits by adding 'fill=deposit_type' after 'x = distribution_channel':

## deposit
ggplot(data = hotel_bookings) +
  geom_bar(mapping =  aes(x = distribution_channel, fill = deposit_type))

## market segment
ggplot(data = hotel_bookings) +
  geom_bar(mapping =  aes(x = distribution_channel, fill = market_segment))

# After reviewing the new charts
## your stakeholder asks you to create separate charts for each deposit type and market segment
# to help them understand the differences more clearly.

##
ggplot(data = hotel_bookings) +
  geom_bar(mapping =  aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)
### This code chunk creates three bar charts for 'no_deposit', non_refund', and 'refundable' deposit types. 
### You notice that it's hard to read the x-axis labels here, so you add one piece of code at the end that rotates the text to 45 degrees to make it easier to read.
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

## The facet_grid function does something similar. 
## The main difference is that facet_grid will include plots even if they are empty. Run the code chunk below to check it out:

ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))


## Now, you could put all of this in one chart and explore the differences by deposit type and market segment.
## Run the code chunk below to find out; notice how the ~ character is being used before the variables that the chart is being split by:
  
  ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment) +
  theme(axis.text.x = element_text(angle = 45))

