# First, load the data package
data("airquality")

# AND operator
airquality[, "Solar.R"] > 150 & airquality[, "Wind"] > 10

# OR operator
airquality[, "Solar.R"] > 150 | airquality[, "Wind"] >10

# NOT operator
airquality[, "Day"] != 1

# Not OR operator
!(airquality[, "Solar.R"] > 150 | airquality[, "Wind"] > 10)