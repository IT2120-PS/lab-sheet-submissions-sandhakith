
setwd("C:\\Users\\IT24103871\\Desktop\\Lab_04_IT24103871")
branch_data <- read.csv("Exercise.txt",header=TRUE)

str(branch_data)

names(branch_data)
boxplot(Sales_X1,main="Boxplot of Sales",col="orange")

summary(Advertising_X2)

find_outliers <- function(x){
  Q1 <-quantile(x,0.25)
  Q3 <- quantile(x,0.75)
  IQR_val <- IQR(x)
  
  lower <-Q1-1.5*IQR_val
  upper <- Q3-1.5* IQR_val
  
  outliers <- x[x<lower| x> upper]
  return(outliers)
  
}

find_outliers(branch_data$Years_X3)