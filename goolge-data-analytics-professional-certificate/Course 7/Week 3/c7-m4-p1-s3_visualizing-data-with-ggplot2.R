install.packages("ggplot2")
install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

# Suppose you want to plot the relationship between body mass and flipper length in the three penguin species.
# You can choose a specific geom that fits the type of data you have. 
# Points show the relationship between two quantitative variables. 
# A scatter-plot of points would be an effective way to display the relationship between the two variables. 
# You can put flipper length on the x-axis and body mass on the y-axis. 

# first argument of the ggplot() function is the dataset to use in the plot
ggplot(data = penguins) +
 geom_point(
  # geom_point() function uses points to create scatterplots;  geom_bar() function uses bars to create bar charts, and so on
  # This defines how variables in your data set are mapped to visual properties.
  # aes() function specify which variables to map to the x-axis and the y-axis of the coordinate system.
  mapping = aes(x = flipper_length_mm,  y = body_mass_g)) 

## mapping arugment insde ggplot() approach
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()