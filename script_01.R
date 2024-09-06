# Fun Dice Roller in R!

# 1. Set up the dice roll function
roll_dice <- function(num_rolls = 10) {
  # Roll a fair 6-sided die 'num_rolls' times
  rolls <- sample(1:6, size = num_rolls, replace = TRUE)
  return(rolls)
}

# 2. Roll the dice 100 times!
set.seed(42) # Ensures reproducibility (so we can "cheat" a little)
dice_rolls <- roll_dice(100)

# 3. Visualize the result
library(ggplot2)
ggplot(data.frame(roll = dice_rolls), aes(x = roll)) +
  geom_bar(fill = "skyblue", color = "black") +
  theme_minimal() +
  labs(
    title = "Dice Roll Simulation",
    subtitle = "100 rolls of a fair 6-sided die",
    x = "Dice Face",
    y = "Frequency"
  )

# 4. Fun message
cat("The dice has been rolled! Let's see if you're lucky today... 🎲\n")
