


id <- c(1:10)

id

name <-
  c(
    "John Mendes",
    "Rob Stewart",
    "Rachel Abrahamson",
    "Christy Hickman",
    "Johnson Harper",
    "Candace Miller",
    "Carlson Landy",
    "Pansy Jordan",
    "Darius Berry",
    "Claudia Garcia"
  )

job_title <-
  c(
    "Professional",
    "Programmer",
    "Management",
    "Clerical",
    "Developer",
    "Programmer",
    "Management",
    "Clerical",
    "Developer",
    "Programmer"
  )

employee <- data.frame(id, name, job_title)

View(employee)

print(employee)

# separated a column into 2 ones
separated <-
  separate(employee,
           name,
           into = c('first_name', 'last_name'),
           sep = ' ')
print(separated)

##

first_name <-
  c(
    "John",
    "Rob",
    "Rachel",
    "Christy",
    "Johnson",
    "Candace",
    "Carlson",
    "Pansy",
    "Darius",
    "Claudia"
  )

last_name <-
  c(
    "Mendes",
    "Stewart",
    "Abrahamson",
    "Hickman",
    "Harper",
    "Miller",
    "Landy",
    "Jordan",
    "Berry",
    "Garcia"
  )

job_title <-
  c(
    "Professional",
    "Programmer",
    "Management",
    "Clerical",
    "Developer",
    "Programmer",
    "Management",
    "Clerical",
    "Developer",
    "Programmer"
  )

employee <- data.frame(id, first_name, last_name, job_title)

print(employee)

## combibe/ merge columns
unite(employee, 'name', first_name, last_name, sep = ' ')

## mutate() to add new column
library("palmerpenguins")
View(penguins)

penguins %>%
  mutate(body_mass_kg = body_mass_g / 1000,
         flipper_length_m = flipper_length_mm / 1000) %>% 
  select(species, body_mass_kg, flipper_length_m)

clean_names()

penguins %>% 
  arrange(bill_length_mm)
