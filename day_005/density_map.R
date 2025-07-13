# consider we've loaded all the required packages.
# This time, I will create a density map based on the body_mass_g variable.

ggplot(penguins, aes(x = body_mass_g)) +
    geom_density()

# Now, we can see the density map, but it looks a thin non linear line.
# To make it more visible, I will fill the area under the curve with a color.

ggplot(penguins, aes(x = body_mass_g)) +
    geom_density(fill = "blue", alpha = 0.2) # <--- alpha is used to set the transparency of the fill color.

# Now, we can see the density map with a filled area under the curve.
# I use alpha vale 0.2 just to make it filled but not too dark. 
# It has 0 to 1 range, where 0 is completely transparent and 1 is completely opaque.

# It's not the end, I want to add a minimal theme to the density map.

ggplot(penguins, aes(x = body_mass_g)) +
    geom_density(fill = "blue", alpha = 0.2) +
    theme_minimal() # <--- this will add a minimal theme to the density map.


