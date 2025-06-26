# Question 1: Make a bar plot of species of penguins, where you assign species to the y aesthetic. How is this plot different?
# So, let's create a bar plot of species on y axis.
# Consider we've loaded the required packages.

ggplot(enguins, aes(y = species)) +
    geom_bar()

# The result is the bars are on y axis and horizontal.
# The x axis is the count of each species.

# Question 2: How are the following two plots different? 
# Which aesthetic, color or fill, is more useful for changing the color of bars?

# plot 1

ggplot(penguins, aes(x = species)) +
  geom_bar(color = "red")

# plot 2

ggplot(penguins, aes(x = species)) +
  geom_bar(fill = "red")

# Answer : Plot 1 has red borders around the bars, while plot 2 has the entire bar filled with red color.
# If we want to fill the whole bar or change the color of the bars, we should use the fill aesthetic.

# Question 3: What does the bins argument in geom_histogram() do?
# Answer : The bins argument in the geom_histogram() function specifies the number of bins to use for the histogram.
# Example:

ggplot(penguins, aes(x = body_mass_g)) +
    geom_hitogram(bins = 15) # <--- this will create a histogram with 15 bins.

# Question 4: Make a histogram of the carat variable in the diamonds dataset that is available when you load the tidyverse package. 
# Experiment with different binwidths. 
# What binwidth reveals the most interesting patterns?

# let's load the tidyverse package.

library(tidyverse)

# Now, let's dig how is the diamonds dataset before we can make the histogram.
# Here, I will use different ways to look at the diamonds dataset.

?diamonds # <--- this will show the documentation of the diamonds dataset.
head(diamonds) # <--- this will show the first 6 rows of the diamonds dataset.
summary(diamonds) # <--- this will show the summary of the diamonds dataset.
View(diamonds) # <--- this will open the diamonds dataset in a new tab in RStudio.
str(diamonds) # <--- this will show the structure of the diamonds dataset.

# Now, we know the data values in carat variable.
# We're about to create a histogram based on the carat variable.
#So, we need to know the range of the carat variable.

summary(diamonds$carat) # <--- this will show the summary of the carat variable.

# The minimum value is 0.2 and the maximum value is 5.01.
# The binwidths I want to try are 0.01, 0.05, 0.1, 0.2, and 1.

ggplot(diamonds, aes(x = carat)) +
    geom_histogram(binwidth = 0.01) +
    labs(title = "Histogram of Carat with Binwidth 0.01")
    ggsave("histo_001.png", width = 10, height = 6)

ggplot(diamonds, aes(x = carat)) +
    geom_histogram(binwidth = 0.05) +
    labs(title = "Histogram of Carat with Binwidth 0.05")
    ggsave("histo_005.png", width = 10, height = 6)

ggplot(diamonds, aes(x = carat)) +
    geom_histogram(binwidth = 0.1) +
    labs(title = "Histogram of Carat with Binwidth 0.1")
    ggsave("histo_01.png", width = 10, height = 6)

ggplot(diamonds, aes(x = carat)) +
    geom_histogram(binwidth = 0.02) +
    labs(title = "Histogram of Carat with Binwidth 0.2")
    ggsave("histo_02.png", width = 10, height = 6)

ggplot(diamonds, aes(x = carat)) +
    geom_histogram(binwidth = 1) +
    labs(title = "Histogram of Carat with Binwidth 1")
    ggsave("histo_1.png", width = 10, height = 6)