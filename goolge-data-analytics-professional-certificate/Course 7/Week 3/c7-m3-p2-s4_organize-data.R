# load data `palmer-penguins`
install.packages("palmerpenguins")
library("palmerpenguins")

library(tidyverse)

penguins %>% arrange(bill_length_mm) # sort ASC

penguins %>% arrange(-bill_length_mm) # sort DESC

# store in DF
penguins2 <- penguins %>% arrange(-bill_length_mm)

head(penguins2)

# group by
## group by island, summarize

### get average of bill length
penguins %>%
  group_by(island) %>% #
  drop_na() %>% # remove na rows
  summarize(mean_bill_length_mm = mean(bill_length_mm))

### get maximum bill length
penguins %>%
  group_by(island) %>%
  drop_na() %>%
  summarise(maximum_bill_lenth_mm = max(bill_length_mm))

# groupy by multiple columns
penguins %>% 
  group_by(island, species) %>% 
  drop_na() %>% 
  summarise(max_bl = max(bill_length_mm), mean_bl = mean(bill_length_mm))

# filtering

penguins %>% filter(species == 'Adelie')

penguins %>% filter(species == 'Gentoo')


# use the summarize() and min() functions to find the minimum value for the variable bill_depth_mm.
penguins %>% 
  drop_na() %>% 
  group_by(species) %>% 
  summarise(min_dp = min(bill_depth_mm))

penguins %>% 
  drop_na() %>% 
  mutate(is_large = bill_length_mm == 45) %>% 
  filter(is_large == TRUE) %>% 
  select(species, bill_length_mm, is_large)

penguins %>%
  unite(length_depth, c("bill_length_mm", "bill_depth_mm") , sep = "-") %>%
  select(species, length_depth)


unit_df <- unite(penguins,length_depth, bill_length_mm,bill_depth_mm, sep = "-") %>% 
  select(species,length_depth)
head(unit_df)
