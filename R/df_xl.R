df_xl <- function(df, .variables, summary = F, outputFile){
  require(plyr)
  require(XLConnect)
  
  wb <- loadWorkbook(outputFile, create = T)
  
  if(summary){
    summaryData <- ddply(df, .variables, numcolwise(sum))
    createSheet(wb, name = 'Summary')
    writeWorksheet(wb, summaryData, sheet = 'Summary')
  }  
  else 
    message('No summary included in file ', outputFile)
  
  list <- dlply(df, .variables)
  
  for(i in 1:length(list))
    assign(names(list)[i], list[[i]])
  
  for(object in names(list)){
    createSheet(wb, name = object)
    writeWorksheet(wb, get(object), sheet = object)
  }
  
  saveWorkbook(wb)
  message('All objects saved to file ', outputFile)
  
}