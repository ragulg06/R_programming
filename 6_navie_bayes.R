library(caret)
library(e1071)
library(datasets)

data(iris)
head(iris)

set.seed(123)
train_index = createDataPartition(iris$Species, p = 0.7, list=FALSE)
train_data = iris[train_index,]
test_data = iris[-train_index,]

model = naiveBayes(Species ~ ., data=train_data)

predictions = predict(model, test_data)

conf_matrix = confusionMatrix(predictions, test_data$Species)

print(conf_matrix)

