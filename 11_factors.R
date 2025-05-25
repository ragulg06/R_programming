# Sample data frame with a categorical column
data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Alice", "Bob"),
  Gender = c("Female", "Male", "Male", "Female", "Male")
)

# Convert 'Gender' column into a factor
data$Gender <- as.factor(data$Gender)

# Display summary
summary(data)
