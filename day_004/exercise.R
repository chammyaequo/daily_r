# Today, I will do some exercises from the book "R for Data Science" by Hadley Wickham and Garrett Grolemund.
# Question 1: How many rows are in penguins? How many columns?
# There is a hint in the question to look for the penguins dataset.
# So I will load the penguins dataset from the palmerpenguins package using ?penguins.

?penguins
# According to the penguins_raw dataset, there are  344 rows and 17 variables (columns).

# Question 2: What does the bill_depth_mm variable in the penguins data frame describe?
# The bill_depth_mm variable in the penguins data frame describes the depth of the penguin's culmen in millimeters.

# Question 3: Make a scatterplot of bill_depth_mm vs. bill_length_mm. So let's load the palmerpenguins package and create the scatterplot.
library(palmerpenguins)

# Then I will create the scatterplot using ggplot.
library(ggplot2)
ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm.)
)

# As I have some experience with ggplot yesterday, I tell ggplot to plot the penguins data with which axis to use.
ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm.)
) +
    geom_point(
        mapping = aes(color = species, shape = species)
)