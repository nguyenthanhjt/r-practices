library(tidyverse)
library(janitor)
library(lubridate)
library(ggplot2)

getwd()


setwd("./goolge-data-analytics-professional-certificate/case-study-1/")

m01 <- read.csv("./input-data/202301-divvy-tripdata.csv")
m02 <- read.csv("./input-data/202302-divvy-tripdata.csv")
m03 <- read.csv("./input-data/202303-divvy-tripdata.csv")
m04 <- read.csv("./input-data/202304-divvy-tripdata.csv")
m05 <- read.csv("./input-data/202305-divvy-tripdata.csv")
m06 <- read.csv("./input-data/202306-divvy-tripdata.csv")
m07 <- read.csv("./input-data/202307-divvy-tripdata.csv")
m08 <- read.csv("./input-data/202308-divvy-tripdata.csv")
m09 <- read.csv("./input-data/202309-divvy-tripdata.csv")
m10 <- read.csv("./input-data/202310-divvy-tripdata.csv")
m11 <- read.csv("./input-data/202311-divvy-tripdata.csv")
m12 <- read.csv("./input-data/202312-divvy-tripdata.csv")

# read&concatenate into 1 DF in shorter way
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
bike_trip <- rbind(m01, m02, m03, m04, m05, m06, m07, m08, m09, m10, m11, m12)
remove(m01, m02, m03, m04, m05, m06, m07, m08, m09, m10, m11, m12)
# determine number of rows before perform data cleaning
orgRowNum <- nrow(bike_trip)

# cleaning
## remove NA value
bike_trip <- janitor::remove_empty(bike_trip, which = c("cols"))
bike_trip <- janitor::remove_empty(bike_trip, which = c("rows"))
bike_trip <- drop_na(bike_trip)

## remove duplicated rows
### df_no_dups <- bike_trip[!duplicated(bike_trip$ride_id), ]
### print(paste("Removed", nrow(bike_trip) - nrow(df_no_dups), "duplicated rows"))
### df_no_dups <- bike_trip[!duplicated(bike_trip$ride_id),]
### print(paste("Removed",nrow(bike_trip) - nrow(df_no_dups), "duplicated rows"))
### -> "Removed 0 duplicated rows"
df_no_dups <- distinct(bike_trip)
head(df_no_dups)

## remove trip duration with negative value
## remove unnecessary columns
## Parsing datetime columns
df_no_dups$started_at <-
  as.POSIXct(df_no_dups$started_at, "%Y-%m-%d %H:%M:%S")
df_no_dups$ended_at <-
  as.POSIXct(df_no_dups$ended_at, "%Y-%m-%d %H:%M:%S")

head(df_no_dups)

## create new columns for analysis
#### ride_time_m: Represents the total time of a bike ride, in minutes
df_no_dups <- df_no_dups %>%
  mutate(ride_time_m = as.numeric(df_no_dups$ended_at - df_no_dups$started_at) / 60)
summary(df_no_dups$ride_time_m)

## determine number of rows after perform data cleaning
rowNum <- nrow(bike_trip)
