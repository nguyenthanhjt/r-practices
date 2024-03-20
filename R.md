# R

## R common function

- `separate()`: `separate(dataset, column-name, into=c('new-col-1','new-col-2',..), sep = 'separator-character')`: split data in a column into some others columns
- `unit()`: allow to merge/combine columns together
- `mutate()`: modify the data set by add/.. columns
- `group_by()`: group data by columns
  - `group_by(column-1-name, column-2-name,...)`
- `mean()`: calculate average of a columns
  - `mean(column-name)` 
- `sd()`: calculate the Deviation compare to average value of a column
- `cor(x, y))`: calculate the correlation between 2 columns' value