
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

# this is a fun script where you roll the dice 100 times 


# Plot a simple cat using base R graphics

# Create a blank plot
plot(1, 1, type = "n", xlim = c(0, 10), ylim = c(0, 10), xlab = "", ylab = "", axes = FALSE)

# Draw the cat's face (circle)
symbols(5, 5, circles = 2, add = TRUE, inches = FALSE)

# Draw the eyes (small circles)
symbols(c(4.2, 5.8), c(5.8, 5.8), circles = c(0.2, 0.2), add = TRUE, inches = FALSE, fg = "black")

# Draw pupils
symbols(c(4.2, 5.8), c(5.8, 5.8), circles = c(0.05, 0.05), add = TRUE, inches = FALSE, bg = "black")

# Draw the nose (triangle)
polygon(c(4.8, 5, 5.2), c(5.3, 4.9, 5.3), col = "pink")

# Draw whiskers (lines)
segments(3.5, 5, 4.5, 5)
segments(3.5, 4.8, 4.5, 4.9)
segments(3.5, 5.2, 4.5, 5.1)

segments(5.5, 5, 6.5, 5)
segments(5.5, 4.8, 6.5, 4.9)
segments(5.5, 5.2, 6.5, 5.1)

# Draw the mouth (curves)
lines(c(4.8, 5, 5.2), c(4.8, 4.7, 4.8), type = "l")

# Draw the ears (triangles)
polygon(c(3.8, 4.3, 4.0), c(6.5, 6.5, 7.5), col = "grey")
polygon(c(5.7, 6.2, 6.0), c(6.5, 6.5, 7.5), col = "grey")

# Optional: Add text label for fun
text(5, 3.5, "Meow!", cex = 2, col = "purple")

