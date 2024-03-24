library(ggplot2)
library(palmerpenguins)

# save the visualization

## export in RStudio
ggplot(data = penguins) +
  geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color =
                             species))

## ggsave() function of ggplot2
ggsave("three penguin species.png")


png(file = "example.png", bg = "transparent") plot(1:10) rect(1, 5, 3, 7, col =
                                                                "white") dev.off()