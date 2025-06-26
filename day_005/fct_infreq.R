# consider we've loaded all the required packages.
# This time, I will order bars by ascending frequency of species.

ggplot(
    data = penguins,
    aes(fct_infreq(species),fill = species)) +
    geom_bar() +
    scale_fill_manual(values = c("purple", "brown", "orange")) +
    labs(x = "species ordered by frequency")

# Here on the plot, we can see the bars are ordered by the frequency of each species in ascending order.