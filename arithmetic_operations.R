a = as.integer(readline(prompt="Enter the first number: "))
b = as.integer(readline(prompt="Enter the second number: "))

cat("Addition: ",a+b,"\n")
cat("Subtraction: ",a-b, "\n")
cat("Multiplication: ",a*b, "\n")
if(b !=0 ){
  cat("Division: ",b/a)
}else{
  cat("Zero Divison Error")
}