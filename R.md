# R

## Syntax

- Call a column of a Data frame: [data-frame-name]$[column-name]

## R common function

### Inspect - Review data set information

- `str()`:
- `glimpse()`:
- `colnames()`:
- `head()`: view first 6 rows of data

### Data Manipulation function

- `separate()`: `separate(dataset, column-name, into=c('new-col-1','new-col-2',..), sep = 'separator-character')`: split data in a column into some others columns
- `unit()`: allow to merge/combine columns together
- `mutate()`: modify the data set by add/.. columns
- `group_by()`: group data by columns
  - `group_by(column-1-name, column-2-name,...)`
- `mean()`: calculate average of a columns
  - `mean(column-name)` 
- `sd()`: calculate the Deviation compare to average value of a column
- `cor(x, y))`: calculate the correlation between 2 columns' value
- `bias(actual, predicted)`: bias computes the average amount by which actual is greater than predicted.
  - actual: The ground truth numeric vector.
  - predicted: The predicted numeric vector, where each element in the vector is a prediction for the corresponding element in actual.
  - If a model is unbiased bias(actual, predicted) should be close to zero. Bias is calculated by taking the average of (actual - predicted).
- `sample()`: function allows you to take a random sample of elements from a data set. 
- `arrange(data-set, desc(column-name))`: sort `asc(column-name)`, `desc(column-name`) by input column-name

### Visualization functions

- scatter-plot: `ggplot(data = [data-name]) + geom_point(mapping = aes(x = [data-property-map-to-x-axis], y = [data-property-map-to-y-axis]))`
  - ggplot(datadata = [data-name]): The first argument of the ggplot() function is the data set to use in the plot.
  - geom_point(): function uses points to create scatterplots
  - mapping = aes(x = [data-property-map-to-x-axis], y = [data-property-map-to-y-axis]): mapping argument is always paired with the aes() function. The x and y arguments of the aes() function specify which variables to map to the x-axis and the y-axis of the coordinate system. 

- facet()

### Annotation

- `lab(title="", subtitle="", caption="", x = [], y = [])`:
- paste0("text: ", [var-1], "text-between", [var-2]):

```r
ggplot(data = hotel_bookings) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap( ~ hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(
    title = "Comparison of market segments by hotel type for hotel bookings",
    caption = paste0("Data from: ", mindate, " to ", maxdate),
    x = "Market Segment",
    y = "Number of Bookings"
  )
```


### Export

- `ggsave([file-naae], width=[], height=[])`
- `png(file = "exampleplot.png", bg = "transparent") plot(1:10) rect(1, 5, 3, 7, col = "white") dev.off()`
- `pdf(file = "/Users/username/Desktop/example.pdf", width = 4, height = 4) plot(x = 1:10, y = 1:10) abline(v = 0) text(x = 0, y = 1, labels = "Random text") dev.off()`

```r
ggsave('hotel_booking_chart.png',
       width = 7,
       height = 7)
```