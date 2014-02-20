install_load <- function(package1, ...){
  
  packages <- c(package1, ...)
  
  for(package in packages){
    install.packages(package)
    packageName <- paste(package)
    do.call("library", list(packageName))
  }
  
}