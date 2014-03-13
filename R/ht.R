ht <- function(x){
  head_x <- head(x)
  tail_x <- tail(x)
  if(class(x) == 'data.frame'){
    rbind(head_x, tail_x)
  }
  else c(head_x, tail_x)
}