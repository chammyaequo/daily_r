# I will install palmerpenguins package in RStudio
install.packages("palmerpenguins")

# Then I will load the package
library(palmerpenguins)

# Then I will preview the dataframe
penguins

# I will see the interactive data table
View(penguins)

# I will take a quick look at the columns that the data table has
glimpse(penguins)

# I will create a scratch canvas to play with the data
ggplot(data = penguins)

# As a next step, I will tell ggplot to plot the penguins data
ggplot(
    data = penguins,
    mapping = aes(x =flipper_length_mm, y = body_mass_g)
)

# Now, ggplot knows that I want to plot the flipper length on the x-axis and body mass on the y-axis
# So, let's add penguins to the canvas

ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point()

  # Here, a single color penguins appears on the canvas, but there is an error with missing data
  # And 'but' again, I'm new to R and I don't know how to fix it. So, let's skip this part for now.
  # And let's add a new layer to the canvas to add color to the penguins
ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point()

  # Finally, We got a colorful plot of penguins with flipper length on the x-axis and body mass on the y-axis, colored by species.
  # Moreover, I want to add some geometric lines connecting between flipper length and body mass. Let's add a new layer to the canvas to add lines connecting the points
ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)
) +
  geom_point() +
  geom_smooth(method = "lm")

  # What I added is linear models (lm) to the plot, which is a statistical method to fit a line to the data points.
  # But, this is still not enough for me, I want a single line connecting the dataset as opposed to multiple lines for each species.
ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species)) +
  geom_smooth(method = "lm")

  # It's not the end yet, I want to change the shape for each species.
  ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm")

  # And, it is time to add some labels to the plot. So, I will use labs() function to add lables.
  # And, as an extra layer, I will use color blindness-friendly palette from the ggthemes package.
  # So, I will install ggthemes package first.
install.packages("ggthemes")
# Then, I will load the package
library(ggthemes)
# Finally, I will add the labels and the color palette to the plot
ggplot(
    data = penguins,
    mapping = aes(x = flipper_length_mm, y = body_mass_g)
) +
  geom_point(mapping = aes(color = species, shape = species)) +
  geom_smooth(method = "lm") +
  labs(
    title = "Body Mass and Flipper Length",
    subtitle = "Dimensions for Adelie, Chinstrap, and Gentoo Penguins",
    x = "Flipper Length (mm)",
    y = "Body Mass (g)",
    color = "Species",
    shape = "Species"
  ) +
  scale_color_colorblind() # Using color blindness-friendly palette from ggthemes
# Now, I have a complete plot with labels and color palette.
# I can save the plot to a file using ggsave() function.
ggsave("penguins_plot.png", width = 10, height = 6)

# As I said before, I am new to R and I don't know where ggsave() function saves the file.
# So, I will use getwd() function to get the current working directory.
getwd()

# Voila! It is under Documents folder.