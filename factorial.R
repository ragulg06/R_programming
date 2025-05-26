factorial = function(n){
  if(n<0){
    stop("Fatorial is not defined for negative numbers.")
  }else if(n==0 || n==1){
    return(1)
  }else{
    return(n*factorial(n-1))
  }
}


num = as.integer(readline(prompt="Enter the number; "))
result = factorial(num)
cat("Factorial of",num,"is:",result)