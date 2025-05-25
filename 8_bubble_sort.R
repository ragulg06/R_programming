bubble_sort = function(vec){
  n = length(vec)
  for(i in 1:(n-1)){
    for(j in 1:(n-i)){
      if(vec[i] < vec[j]){
        temp = vec[i]
        vec[i] = vec[j]
        vec[j] = temp
      }
    }
  }
  return(vec)
}


vector = c(34, 12, 5, 78, 23, 9)
sorted_vector = bubble_sort(vector)

cat("Original Vector:", vector, "\n")
cat("Sorted Vector:", sorted_vector, "\n")