bubble_sort = function(vec){
  n = length(vec)
  for(i in 1:(n-1)){
    for(j in 1:(n - i)){
      if(vec[j] > vec[j + 1]){
        temp = vec[j]
        vec[j] = vec[j + 1]
        vec[j + 1] = temp
      }
    }
  }
  return(vec)
}

set.seed(123)
vec = sample(1:1000, 1000)

time_bubble = system.time({
  sorted_bubble = bubble_sort(vec)
})

time_builtin = system.time({
  sorted_builtin = sort(vec)
})

identical(sorted_bubble, sorted_builtin)

cat("Bubble sort time:\n")
print(time_bubble)

cat("\nBuilt-in sort time:\n")
print(time_builtin)
