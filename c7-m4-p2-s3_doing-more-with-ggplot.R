library(ggplot2)
library(palmerpenguins)

# smooth
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm,  y = body_mass_g))

# combine two geom function
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm,  y = body_mass_g)) +
  geom_point(mapping = aes(x = flipper_length_mm,  y = body_mass_g))

# map each line to each species
ggplot(data = penguins) +
  geom_smooth(mapping = aes(x = flipper_length_mm,  y = body_mass_g, linetype=species) )

# geom_jitter function -> create scatter plot
ggplot(data = penguins) +
  geom_jitter(mapping = aes(x = flipper_length_mm,  y = body_mass_g, linetype=species) )

# Bar char
ggplot(data = diamonds) +
## how many times each x-value appears in the data: here shows 5 categories of cut quality: fair, good, very good, premium, ideal
  geom_bar(mapping = aes(x=cut)) 
## show the counts on the y-axis: the number of diamons in each category

## add aesthetic:
### color
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, color = cut)) 

### add aesthetic: fill to highlight difference between cuts clearly to make plot easier to understand
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = cut)) 
### stacked bar chart: fill by clarity
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = cut, fill = clarity)) 
