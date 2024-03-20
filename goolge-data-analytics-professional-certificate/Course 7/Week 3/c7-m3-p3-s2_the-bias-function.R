install.packages("SimDesign")

library(SimDesign)

# use bias function to compare forecasted temperatures with actual temperatures

actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_temp, predicted_temp) # [1] 0.7166667 -> close to zero

# Scenario: working for game store
# The store has been keeping a record of how many copies of new games they sell on release day.
# They want to compare those numbers to their actual sales so that they could find out if they are ordering new stock according to their actual needs.

actual_sales <- c(150, 203, 137, 247, 116, 287)
predicted_sales <- c(200, 300, 150, 250, 150, 300)
bias(actual_sales, predicted_sales) # -35 -> far from zero 
# -> predicted outcome is larger than actual outcome which means they may be ordering too much stock for release days
