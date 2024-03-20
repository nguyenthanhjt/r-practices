# install package: Here -> # this package makes referencing files easier
install.packages("here") 
library("here") # load lib

# install packages: Skimr, Janitor -> simplify data cleaning tasks
install.packages("skimr") # summarizing data easily, allow to skim through quickly
library("skimr") # load lib

install.packages("janitor") # having function to cleaning data
library("janitor") # load lib

install.packages("dplyr") # having function to cleaning data
library("dplyr") # load lib

# load data `palmer-penguins`
install.packages("palmerpenguins")
library("palmerpenguins")

# inspect

## skim_without_charts -> give the dataset summary: number of row, columns,Column type, data types
skim_without_charts(penguins)

##
glimpse(penguins)
## preview
head(penguins)
##
select(penguins)

## pipe approach
penguins %>% 
  select(species)

### modify data

## dplyr.rename
penguins %>% 
  rename(island_new=island)

## dplyr.rename_with
### 
rename_with(penguins, toupper)
rename_with(penguins, tolower)
penguins %>% 
  rename_with(toupper)

## janitor.clean_name()

clean_names(penguins)
