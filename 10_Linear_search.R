linear_search = function(vec, tar){
  for(i in 1:length(vec)){
    if(vec[i] == tar){
      return(i)
    }
  }
  return(-1)
}

vector = c(4, 8, 15, 16, 23, 42)
target = 16
result = linear_search(vector, target)

if (result != -1) {
  cat("Value", target, "found at position", result, "\n")
} else {
  cat("Value", target, "not found in the vector\n")
}