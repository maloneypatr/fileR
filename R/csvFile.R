csvFile <- function(data, fileName){
  fileName <- paste(fileName, '_', Sys.Date(), '.csv', sep = '')
  write.csv(data, fileName, row.names = F)
}