library(tidyverse)
chocolate_df <- read_csv("./flavors_of_cacao.csv")
View(chocolate_df)

colnames(chocolate_df)

glimpse(chocolate_df)

chocolate_df_rename <- chocolate_df %>%
  rename(Company = `Company 
(Maker-if known)`)


trimmed_flavors_df <- chocolate_df_rename %>%
    select(Rating, `Cocoa\nPercent`, `Company`, `Company\nLocation`)

head(trimmed_flavors_df)


best_trimmed_flavors_df <- trimmed_flavors_df %>%
  filter(`Cocoa\nPercent` > 70, Rating > 3.5)
head(best_trimmed_flavors_df)
View(best_trimmed_flavors_df)

ggplot(data = best_trimmed_flavors_df) +
  geom_bar(mapping = aes(x = `Company\nLocation`, fill=Rating))

# use the summarize() and mean() functions to find the mean rating
rating_df <- trimmed_chocolate_df %>%
  summarize(mean_rating = mean(Rating))

head(rating_df)

# filter the data frame for chocolate bars that contain at least 70% cocoa and have a rating of at least 3.5 points.
best_trimmed_flavors_df <- trimmed_chocolate_df %>% 
  filter(`Cocoa
Percent`>70, Rating > 3.5)

head(best_trimmed_flavors_df)
View(best_trimmed_flavors_df)

## use the geom_bar() function to create a bar chart. Add the code chunk that lets you create a bar chart with the variable Company on the x-axis.

ggplot(data = best_trimmed_flavors_df) + 
  geom_bar(mapping = 
             aes(x = Company))

##
colnames(chocolate_df_rename)
ggplot(data = chocolate_df_rename) +
    geom_bar(mapping = aes(x = `Company\nLocation`, fill = Rating))
##
ggplot(data = best_trimmed_flavors_df) +
  geom_bar(mapping = aes(x = Company)) +
  facet_wrap(~Company) +
  labs(title = "Best Chocolates")

## 11
ggplot(data = trimmed_chocolate_df) +
  geom_point(mapping = aes(x = `Cocoa Percent`, y = Rating)) +
  labs(title = "Best Chocolates") + 
  ggsave("chocalate.jpeg")




