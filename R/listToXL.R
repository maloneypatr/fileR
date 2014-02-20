listToXL <- function(list, outputFile){
  require(plyr)
  require(XLConnect)
  
  wb <- loadWorkbook(outputFile, create = T)
  
  for(i in 1:length(list))
    assign(names(list)[i], list[[i]])
  
  for(object in names(list)){
    createSheet(wb, name = object)
    writeWorksheet(wb, get(object), sheet = object)
  }
  
  saveWorkbook(wb)
  message('All objects saved to file ', outputFile)
  
}