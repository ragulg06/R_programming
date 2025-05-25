# Install packages if not already installed
install.packages("class")       # For KNN
install.packages("ggplot2")     # For visualization

# Load libraries
library(class)
library(ggplot2)
library(caret)  # For data partition

# Load iris dataset
data(iris)

# Split data: 70% train, 30% test
set.seed(123)
index <- createDataPartition(iris$Species, p=0.7, list=FALSE)
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Prepare data for KNN
train_X <- train_data[, 1:4]       # Features
train_y <- train_data$Species      # Labels
test_X <- test_data[, 1:4]

# Run KNN with k=3
knn_pred <- knn(train = train_X, test = test_X, cl = train_y, k = 3)

# Add predicted labels to test data
test_data$Predicted <- knn_pred

# Confusion matrix
conf_matrix <- table(Predicted = knn_pred, Actual = test_data$Species)
print(conf_matrix)

# Visualization: Plot Sepal.Length vs Sepal.Width colored by prediction
ggplot(test_data, aes(x = Sepal.Length, y = Sepal.Width, color = Predicted, shape = Species)) +
  geom_point(size = 3) +
  labs(title = "KNN Classification on Iris Dataset (k=3)",
       x = "Sepal Length",
       y = "Sepal Width") +
  theme_minimal()
