#install.packages("ggplot2")
#install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")
View(penguins)

# basic
ggplot(data = penguins) +
  geom_point(
    mapping = aes(x = flipper_length_mm,  y = body_mass_g)) 

# Limitations: data points do not refer to each of the three penguin species
# -> add color mapping in aes()
ggplot(data = penguins) +
  geom_point(
    mapping = aes(x = flipper_length_mm,  y = body_mass_g, color = species)) 

# -> use shape to highlight each species
ggplot(data = penguins) +
  geom_point(
    mapping = aes(x = flipper_length_mm,  y = body_mass_g, shape = species)) 

# map both color and shape
ggplot(data = penguins) +
  geom_point(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    shape = species,
    color = species
  )) 

# add size 
ggplot(data = penguins) +
  geom_point(mapping = aes(
    x = flipper_length_mm,
    y = body_mass_g,
    shape = species,
    color = species,
    size = species
  )) 

## other syntax
ggplot(data = penguins) +
  geom_point(
    mapping = aes(
      x = flipper_length_mm,
      y = body_mass_g,
      shape = species,
      color = species,
      size = species
    )
  ) 

# add `alpha` mapping in aes() when getting dense plot with lots of data points
ggplot(data = penguins) +
  geom_point(
    mapping = aes(
      x = flipper_length_mm,
      y = body_mass_g,
      alpha = species
    )
  ) 

# change color of all data point: add color ='color-name' outside of aes()
ggplot(data = penguins) +
  geom_point(
    mapping = aes(
      x = flipper_length_mm,
      y = body_mass_g,
      alpha = species
    ), color = "purple"
  ) 

# change appearence of overall plot without regard to specific variables,
# -> write code outside the aes() fn 



