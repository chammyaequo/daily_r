# Question 5: Why does the following give an error and how would you fix it?
ggplot(data = penguins) + 
  geom_point()

# My answer: The error occurs because the geom_point() function requires a mapping aesthetic to specify which variables to plot on the x and y axes. 
# To fix this, I need to add a mapping argument to the geom_point() function that specifies the x and y aesthetics. 
ggplot(data = penguins) +
    geom_point(mapping = aes(x = something_x, y = something_y))

Question 6: What does the na.rm argument do in geom_point()? What is the default value of the argument? Create a scatterplot where you successfully use this argument set to TRUE.
# The na.rm argument in geom_point() specifies whether to remove missing values (NA) from the data before plotting.
# The default value of the na.rm argument is FALSE, meaning that if there are any missing values in the data, they will cause the function to return an error.
# To create a scatterplot using the na.rm argument set to TRUE, I can use the following code:
ggplot(data = penguins) +
    geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm), na.rm = TRUE)

# Question 7: Add the following caption to the plot you made in the previous exercise: “Data come from the palmerpenguins package.”
ggplot(data = penguins) +
    geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm), na.rm = TRUE) +
    labs(
        caption = "Data come from the palmerpenguins package."
    )

# After that, I will save the plot to a file.
ggsave("na_remove.png", width = 10, height = 6)

# Question 8: Recreate the following visualization. What aesthetic should bill_depth_mm be mapped to? And should it be mapped at the global level or at the geom level? (I will not show the picture)
# first I will read and take notes, then answer each question. Then recreate the visualization.
# notes: 
#    x = flipper_length_mm, 
#    y = body_mass_g, 
#    color = "bill_depth_mm", 
#    points = geom_point(), 
#    shapes are same, 
#    color is gradient, 
#    line is non linear.

# first question: What aesthetic should bill_depth_mm be mapped to?
# answer: bill_depth_mm should be mapped to the color aesthetic because it is not controlling or related with size, shpes and position.

# second question: Should it be mapped at the global level or at the geom level?
# answer: It should be mapped at the geom level because it is specific to the geom_point() layer and does not apply to the entire plot.
# Because bill_depth_mm only colors the points, id does not affect the geom_smooth() line, (it's a solid blue), it must be at the geom level.

# Now I will recreate the visualization. Considered we've loaded all the required packages.
ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
 ) +
    geom_point(mapping = aes(color = bill_depth_mm)) +
    geom_smooth(method = "loess") + # I choose loess for non-linear fitting
    labs( # there is no title, subtitle, and caption in the original visualization
        x = "flipper_length_mm",
        y = "body_mass_g",
        color = "bill_depth_mm"
    )
    scale_color_continuous() # Using a gradient for bill_depth_mm and no specific color palette is mentioned in the original visualization.

# Then, I'll save the plot to a file.
ggsave("recreate.png", width = 10, height = 6)

Question 9: Run this code in your head and predict what the output will look like. Then, run the code in R and check your predictions.
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g, color = island)
) +
  geom_point() +
  geom_smooth(se = FALSE)

# My prediction: The output will be a scatterplot with flipper_length_mm on the x-axis and body_mass_g on the y-axis, with points colored by island.
# The geom_smooth() function will add a smooth line to the plot, but since se = FALSE, it will not show the confidence interval around the smooth line.
# The plot will have three different colors representing the three islands (Biscoe, Dream, and Torgersen) in the penguins dataset.
# What I was wrong is that I thought the smooth line would be a single line for all islands, but it actually creates separate smooth lines for each island.
# After running the code, I confirmed that my prediction was mostly correct, but I learned that the smooth line is created separately for each island.

# Question 10: Will these two graphs look different? Why/why not?
ggplot(
  data = penguins,
  mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point() +
  geom_smooth()

ggplot() +
  geom_point(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  ) +
  geom_smooth(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
  )

# My answer: Yes, these two graphs will look the same. Although the two graphs use different approaches, global call and geom call, but they both use the same data and aesthetics for the points and the smooth line.
