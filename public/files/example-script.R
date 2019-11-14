# This is code to create the graphs used in the Re:produce session on Research
# Compendia and is distributed for the live activity during this session.
# Licence: CC BY 4.0
# Author: Adam H. Sparks, <adam.sparks@usq.edu.au>

library(tidyverse)

# import population density data
pop_density <-
  read_csv("~/Downloads/population_density_per_square_km.csv")

# inspect the data
glimpse(pop_density)

# create a line graph of population density change over time comparing Australia
# and New Zealand

# 1. convert data from wide to long
pd_long <-
  pivot_longer(pop_density,
               -country,
               names_to = "year",
               values_to = "density")
pd_long <-
  filter(pd_long, country == "Australia" | country == "New Zealand")


# 2. graph the long data to show changes over time for each country
ggplot(pd_long,
       aes(
         x = year,
         y = density,
         group = country,
         linetype = country
       )) +
  geom_rect(
    aes(
      xmin = format(Sys.Date(), "%Y"),
      xmax = max(year),
      ymin = -Inf,
      ymax = Inf
    ),
    fill = "pink",
    alpha = 0.03
  ) +
  geom_line() +
  scale_x_discrete(name = "Year", breaks = seq(from = 1950, to = 2100, by = 10)) +
  ylab("Population Density (per sq km)") +
  labs(title = "Population Density from 1950 to 2100",
       caption = "Source: UN World Population Prospects through www.gapminder.org",
       linetype = "Country") +
  theme_classic()

# 3. Save the figure for use in the manuscript
ggsave(
  "pop_density_change.png",
  width = 7,
  height = 7,
  units = "in"
)
