library(datasets)
library(rpart)
library(rpart.plot)
library(caret)

data("iris")

set.seed(123)
index = createDataPartition(iris$Species, p = 0.7, list = FALSE)
train_data = iris[index,]
test_data = iris[-index,]

model = rpart(Species ~ ., data = train_data, method = "class")
rpart.plot(model)

predictions = predict(model, test_data, type="class")

conf_matrix = confusionMatrix(predictions, test_data$Species)

print(conf_matrix
      )

