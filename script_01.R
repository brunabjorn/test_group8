# Installing necessary libraries if not already installed
if (!require("ggplot2")) install.packages("ggplot2", dependencies = TRUE)
if (!require("datasauRus")) install.packages("datasauRus", dependencies = TRUE)

# Load the necessary libraries
library(ggplot2)
library(datasauRus)

# Filter the 'datasaurus_dozen' dataset for the 'dino' subset
dino_data <- datasaurus_dozen[datasaurus_dozen$dataset == "dino", ]

# Plot the 'dino' dataset
ggplot(dino_data, aes(x = x, y = y)) +
  geom_point(color = "darkgreen", size = 3) +
  theme_minimal() +
  labs(
    title = "Dinosaur Plot from datasauRus!",
    subtitle = "The famous datasaurus 🦕",
    x = "X",
    y = "Y"
  ) +
  theme(plot.title = element_text(hjust = 0.5), plot.subtitle = element_text(hjust = 0.5))
