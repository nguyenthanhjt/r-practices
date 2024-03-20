install.packages("tidyverse")
library(tidyverse)
head(diamonds)

ggplot(data = diamonds, aes (x = carat, y=price)) + geom_point()
ggplot(data = diamonds, aes(x = carat, y=price, color=cut)) + geom_point() 

ggplot(data=diamonds, aes(x=carat, y=price, color=cut)) + geom_point()+facet_wrap(~cut)