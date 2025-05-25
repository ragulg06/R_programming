library(datasets)
library(caret)
library(e1071)

data(iris)
head(iris)

set.seed(123)

#ration_index <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
train_index = sample(1:nrow(iris), 0.7*nrow(iris))
train_data = iris[train_index,]
test_data = iris[-train_index,]

model = naiveBayes(Species ~ ., data = train_data)
predictions = predict(model, test_data)

conf_matrix = confusionMatrix(predictions, test_data$Species)
print(conf_matrix)
cat("Accuracy:, ", conf_matrix$overall['Accuracy'])

