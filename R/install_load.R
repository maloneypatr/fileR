checkInstall <- function (package1, ...) 
{
  packages <- c(package1, ...)
  
  for(package in packages){
    
    if(package %in% rownames(installed.packages()))
      do.call('library', list(package))
    
    else {
      install.packages(package)
      do.call("library", list(package))
    }
    
  }
  
}