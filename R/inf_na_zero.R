inf_na_zero <- function(x){
  
  x[sapply(x, is.na)] <- 0
  x[sapply(x, is.infinite)] <- 0
  x
  
}