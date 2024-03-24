library(ggplot2)
library(palmerpenguins)
#- Facets: display smaller groups, or subsets of the data
##- A facet is a side or section of an object. Ex: like the sides of a gemstone
##- Facets show different side of the data by placing each subset on its own plot

ggplot(data = penguins ,aes(x=flipper_length_mm, y =body_mass_g)) +
  geom_point(aes(color = species)) +
  facet_wrap(~species)

# diamonds
ggplot(data = diamonds) +
  geom_bar(mapping = aes(x = color, fill = cut)) +
  facet_wrap( ~ cut)

# facet wrapp with 2 variables

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y =body_mass_g, color=species))+
  facet_wrap(sex~species)

# focus on 2 variables
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y =body_mass_g, color=species))+
  facet_grid(~species)

ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm, y =body_mass_g, color=species))+
  facet_grid(~sex)
