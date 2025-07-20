library(tidyverse) # loading tidyverse library
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)
ggsave(diamonds_facet_wrap_ggs.png, width = 700, height = 1000)
getwd()