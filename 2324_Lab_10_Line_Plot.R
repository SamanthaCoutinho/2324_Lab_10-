# Load the iris dataset
data(iris)

# Compute the average Sepal.Length for each Species
avg_sepal <- tapply(iris$Sepal.Length, iris$Species, mean)

# Create a simple line plot
plot(
  avg_sepal,
  type = "o",                    # "o" = line + points
  main = "Average Sepal Length by Species",
  xlab = "Species",
  ylab = "Average Sepal Length (cm)",
  col = "purple",
  lwd = 2,
  pch = 16,
)

# Add custom x-axis labels
axis(1, at = 1:length(avg_sepal), labels = names(avg_sepal))

# Add grid for clarity
grid()

# Add value labels on each point
text(1:length(avg_sepal), avg_sepal, labels = round(avg_sepal, 2), pos = 3, cex = 0.8)