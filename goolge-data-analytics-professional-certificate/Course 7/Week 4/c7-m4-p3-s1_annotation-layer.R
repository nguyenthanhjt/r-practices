library(ggplot2)
library(palmerpenguins)

# Add the title, sub-title in the header of plot
ggplot(data = penguins) +
  geom_point(mapping =  aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title =  "Palmer Penguins: Body mass vs Flipper Length", subtitle = "Sample of three penguin Species")

## add caption in the bottom right
ggplot(data = penguins) +
  geom_point(mapping =  aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title =  "Palmer Penguins: Body mass vs Flipper Length", subtitle = "Sample of three penguin Species",
       caption = "data colelct by Dr. Kristlen Gorman")

## annotate functions to add note 


ggplot(data = penguins) +
  geom_point(mapping =  aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title =  "Palmer Penguins: Body mass vs Flipper Length",
       subtitle = "Sample of three penguin Species",
       caption = "data colelct by Dr. Kristlen Gorman") +
  annotate(
    "text",
    x = 220,
    y = 3500,
    label = "The gentoos are the largetest",
    color = 'purple', # specify color
    fontface = 'bold', # font 
    size = 4.5, # font size,
    angle = 25 # add angel to text
  )

# Assign
p <- ggplot(data = penguins) +
  geom_point(mapping =  aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
  labs(title =  "Palmer Penguins: Body mass vs Flipper Length",
       subtitle = "Sample of three penguin Species",
       caption = "data colelct by Dr. Kristlen Gorman")

## continue to add other function
p +  annotate(
  "text",
  x = 220,
  y = 3500,
  label = "The gentoos are the largetest",
  color = 'purple',
  # specify color
  fontface = 'bold',
  # font
  size = 4.5,
  # font size,
  angle = 25 # add angel to text
)