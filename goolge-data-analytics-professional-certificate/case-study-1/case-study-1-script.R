library(tidyverse)
library(janitor)
library(lubridate)
library(ggplot2)

getwd();

setwd("./goolge-data-analytics-professional-certificate/case-study-1/")

m01<- read.csv("./input-data/202301-divvy-tripdata.csv")
m02<- read.csv("./input-data/202302-divvy-tripdata.csv")
m03<- read.csv("./input-data/202303-divvy-tripdata.csv")
m04<- read.csv("./input-data/202304-divvy-tripdata.csv")
m05<- read.csv("./input-data/202305-divvy-tripdata.csv")
m06<- read.csv("./input-data/202306-divvy-tripdata.csv")
m07<- read.csv("./input-data/202307-divvy-tripdata.csv")
m08<- read.csv("./input-data/202308-divvy-tripdata.csv")
m09<- read.csv("./input-data/202309-divvy-tripdata.csv")
m10<- read.csv("./input-data/2023010-divvy-tripdata.csv")
m11<- read.csv("./input-data/2023011-divvy-tripdata.csv")
m12<- read.csv("./input-data/2023012-divvy-tripdata.csv")

# concatenate into 1 DF
# csv_files <- list.files(path = "../input-data", recursive = TRUE, full.names=TRUE)
# cyclistic_merged <- do.call(rbind, lapply(csv_files, read.csv))
# head(cyclistic_merged)

# examine
str(m01)
str(m02)
str(m03)
str(m04)
str(m05)
str(m06)
str(m07)
str(m08)
str(m09)
str(m10)
str(m11)
str(m12)

# merge DFs into 1 DF
bike_trip <- rbind(m01,m02,m03,m04,m05,m06,m07,m08,m09,m10,m11,m12)
remove(m01,m02,m03,m04,m05,m06,m07,m08,m09,m10,m11,m12)
# determine number of rows before perform data cleaning
orgRowNum <- nrow(bike_trip)

# cleaning
## remove duplicated rows

## remove NA value
## remove trip duration with negative value
## remove unnecessary columns
## create new columns for analysis
## determine number of rows after perform data cleaning
rowNum <- nrow(bike_trip)