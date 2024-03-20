data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")

# Normal approach

filtered_tg <- filter(ToothGrowth, dose == 0.5)

View(filtered_tg)

arrange(filtered_tg, len)

## Nested function approach

arrange(filter(ToothGrowth, dose == 0.5), len)

## Pipe approach '%>%'
filtered_toothgr <- ToothGrowth %>%
  filter(dose == 0.5) %>%
  group_by(supp) %>%
  summarize(mean_len = mean(len, na.rm = T), .group = "drop")
arrange(len)
View(filtered_toothgr)
