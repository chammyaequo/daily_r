# consider we've loaded all the required packages.
# This time, I will create a histogram based on the body_mass_g variable.

ggplot(penguins, aes(x = body_mass_g)) +
    geom_hitogram(binwidth = 200)

# Here, binwidth is 200, we can caluclate the number of bins by dividing the range of body_mass_g by binwidth.
# To know the range of body_mass_g, we can use the summary() function.
summary(penguins$body_mass_g)

# Here, the minimum value is 2700 and the maximum value is 6300.
# So, the range is 6300 - 2700 = 3600.
# Now, we can calculate the number of bins by dividing the range by binwidth.
# Number of bins = range / binwidth = 3600 / 200 = 18.
# So, there will be 18 bins in the histogram.