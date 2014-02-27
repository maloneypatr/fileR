fileName <- function(name, extension){
  name <- paste(name, '_', Sys.Date(), extension, sep = '')
  return(name)
}