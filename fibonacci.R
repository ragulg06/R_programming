a = 0
b = 1

num = as.integer(readline(prompt="Enter the number: "))

cat("The fibonaci series of", num,"is: ")

for( i in 1:num){
  cat(a," ")
  fn = a+b
  a = b 
  b =fn
}