# consider we've loaded all the required packages.

ggplot(
    data = penguins,
    mapping = aes(x = species)) +
    geom_bar()

# This code will create a bar plot showing the count of each species in the penguins dataset.
# Although we don't set the y axis value in the code, it has y axis value as count by ggplot2 default.
# That's why we are seeing count as y axis value in the plot.

# Now, let's add some color to the bars based on the species.
ggplot(
    data = penguins,
    mapping = aes(x = species, fill = species)) +
    geom_bar()
    
# Now, our bars has RGB colors based on the species.
# But I don't want that RGB colors, I want to use different colors for each species.
# To do that, I will use scale_fill_manual() function to set the colors manually.

ggplot(
    data = penguins,
    mapping = aes(x = species, fill = species)) +
    geom_bar() +
    scale_fill_manual(values = c(
        "Adelie" = "purple",
        "Chinstrap" = "orange",
        "Gentoo" = "brown"
    ))

# Now, the bars are colored with purple for Adelie, orange for Chinstrap, and brown for Gentoo species.
# This time, I will not set colors for each species.
# Instead, I will only tell ggplot only color names, and let it assign colors automatically.

ggplot(
    data = penguins,
    mapping = aes(x = species, fill = species)) +
    geom_bar() +
    scale_fill_manual(values =c("purple", "brown", "orange"))

# The output will be the sames as the previous one, but the colors will be assigned automatically by ggplot2.
# Because, X axis is automatically ordered by ascending alphabetical and I wrote the colors in the same order as previous one.
