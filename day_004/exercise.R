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
    mapping = aes(x = bill_length_mm, y = bill_depth_mm)
)

# As I have some experience with ggplot yesterday, I tell ggplot to plot the penguins data with which axis to use.
ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm)
) +
    geom_point(
        mapping = aes(color = species, shape = species) +
)

# Now, I have a scatterplot of bill_depth_mm vs. bill_length_mm with points colored by species and a linear model line fitted to the data.
ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm)) +
    geom_point(mapping = aes(color = species, shape = species)) +
    geom_smooth(method = "lm")

# Now, what we have is a scatterplot with smooth lines for each species. And let's add some labelling.
ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm)) +
    geom_point(mapping = aes(color = species, shape = species)) +
    geom_smooth(method = "lm") +
    labs(
        title = "Bill Depth vs. Bill Length",
        subtitle = "Dimensions for Penguins' Culmen",
        x = "Bill Length (mm)",
        y = "Bill Depth (mm)",
        color = "Species",
        shape = "Species")

# Now, I have a complete scatterplot with labels and color palette.But I want to add one more thing.
# All data visualization must be accessible, so I will use the ggthemes package to add a color blindness-friendly palette.
# Before that, I need to load ggthemes package.
library(ggthemes)
ggplot(
    data = penguins,
    mapping = aes(x = bill_length_mm, y = bill_depth_mm)) +
    geom_point(mapping = aes(color = species, shape = species)) +
    geom_smooth(method = "lm") +
    labs(
        title = "Bill Depth vs. Bill Length",
        subtitle = "Dimensions for Penguins' Culmen",
        x = "Bill Length (mm)",
        y = "Bill Depth (mm)",
        color = "Species",
        shape = "Species") +
    scale_color_colorblind() # Using color blindness-friendly palette from ggthemes

    # Let's save the plot to a file using ggsave() function.
ggsave("bill_depth_vs_bill_length.png", width = 10, height = 6)

# Voila! Exercise completed.