library(ggplot2)
library(palmerpenguins)

ggplot(data = penguins) + # choose data frame to work with
  geom_point(
    mapping = # tell R what aesthetic to use for the plot
      aes( # [name of aesthetic] = name of variable
        x = flipper_length_mm, y = body_mass_g))


ggplot(data = penguins) + # choose data frame to work with
  geom_point(
    mapping = # tell R what aesthetic to use for the plot
      aes( # [name of aesthetic] = name of variable
        x = bill_length_mm, y = bill_depth_mm))

? geom_point