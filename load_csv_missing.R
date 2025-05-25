data = read.csv("./R/student.csv")
head(data)

for(col in names(data)){
  if(is.numeric(data[[col]])){
    mean = mean(data[[col]], na.rm = TRUE)
    data[[col]][is.na(data[[col]])] = mean
  }
}

print(data)