# Data-import basics

data() # R will display a list of the available datasets.

data("mtcars") # load the mtcars dataset

mtcars # get a preview of dataset in the R console pane

# readr

readr_example()

read_csv(readr_example("mtcars.csv"))

## import spreadsheet

library(readxl)

readxl_example() # get list example excel file in library readxl

read_excel(readxl_example("type-me.xlsx")) # read "type-me.xlsx" from readxl_example()

sheet <- excel_sheets(readxl_example("type-me.xlsx")) # list all indivisual sheet from a excel file

# read specific sheet in a excel file 
read_excel(readxl_example("type-me.xlsx"), sheet = "numberic_coercion")

head(sheet)