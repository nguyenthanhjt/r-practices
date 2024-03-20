install.packages("Tmisc")

library(Tmisc)

data("quartet")

View(quartet)


# a summary of each set with the mean, standard deviation, and correlation for each of these datasets.
quartet %>%
  group_by(set) %>%
  # average(x) - x Deviation with avg -  average(y) - y Deviation with avg
  summarise(mean(x), sd(x), mean(y), sd(y), cor(x, y))

# load visualiztion lib
library(ggplot2)

ggplot(quartet, aes(x, y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(-set)

## `datasauRus` data set
install.packages('datasauRus') #run the code

library('datasauRus') #run the code

ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) + geom_point() +
  theme_void() + theme(legend.position = "none") + facet_wrap(~ dataset, ncol =
                                                                3)  #run the code