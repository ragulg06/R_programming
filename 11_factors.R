data <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "Alice", "Bob"),
  Gender = c("Female", "Male", "Male", "Female", "Male")
)

data$Gender <- as.factor(data$Gender)

summary(data)

