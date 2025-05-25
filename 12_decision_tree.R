
library(rpart)        # For decision tree
library(rpart.plot)   # For plotting the tree

# Load the iris dataset
data(iris)

# Train the decision tree model
model <- rpart(Species ~ ., data = iris, method = "class")

# Print the decision rules
print(model)

# Optional: Plot the decision tree
rpart.plot(model)
