numbers <- numeric(10)
for (i in 1:10) {
  numbers[i] <- as.numeric(readline(prompt = paste("Enter number", i, ": ")))
}

#number = c(23, 45, 12, 67, 34, 89, 10, 56, 78, 32)

cat("Maximum Value: ",max(number),"\n")
cat("Minimum Value: ", min(number), "\n")
cat("Mean value: ", mean(number))