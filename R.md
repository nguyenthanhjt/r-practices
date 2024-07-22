# R

## Syntax

- Call a column of a Data frame: [data-frame-name]$[column-name]

## R common function

- l

### Examine & Clean data

- `clean_names(data, case)`: 
  - data: the input data.frame.
  - case: The desired target case (default is "snake"), indicated by these possible values:
    - "snake" produces snake_case
    - "lower_camel" or "small_camel" produces lowerCamel
    - "upper_camel" or "big_camel" produces UpperCamel
    - "screaming_snake" or "all_caps" produces ALL_CAPS
    - "lower_upper" produces lowerUPPER
    - "upper_lower" produces UPPERlower
    - old_janitor: legacy compatibility option to preserve behavior of clean_names prior to addition of the "case" argument(janitor versions <= 0.3.1 ). Provided as a quick fix for old scripts broken by the changes to clean_names in janitor v1.0.
    - "parsed", "mixed", "none": less-common cases offered by snakecase::to_any_case. See to_any_case for details.

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

### R Markdown

#### Setting the output of an R Markdown document

pdf_document – This creates a PDF file with LaTeX (an open source document layout system). If you don’t already have LaTeX, RStudio will automatically prompt you to install it.

word_document – This creates a Microsoft Word document (.docx).

odt_document – This creates an OpenDocument Text document (.odt).

rtf_document – This creates a Rich Text Format document (.rtf).  

md_document – This creates a Markdown document (which strictly conforms to the original Markdown specification)

github_document – This creates a GitHub document which is a customized version of a Markdown document designed for sharing on GitHub.

For example, the following code creates an HTML document:

---

title: "Demo"

output: html_document

---

And the following code creates a PDF document:

---

title: "Demo"

output: pdf_document

---

The Knit button in the RStudio source editor renders a file to the first format listed in its output field (HTML is the default). You can render a file to additional formats by clicking the dropdown menu next to the knit button.