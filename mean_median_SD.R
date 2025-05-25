data(mtcars)
head(mtcars)

column_data = mtcars$mpg

cat("Mean of mgp: ", mean(column_data), "\n")
cat("Medaian of mgp: ", median(column_data), "\n")
cat("Standard Deviation of mgp: ", sd(column_data), "\n")