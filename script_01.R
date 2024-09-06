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