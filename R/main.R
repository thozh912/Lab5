#' The initializer function for the data
#' 
#' This function initializes channels and program .csv files for use in Shinyapp
#' project by executing SR Open API requests.
#' 
#' 


main <- function(){
  channels <- get_channels()
  programs <- get_programs(channels)
  
  
  setwd("../Shinyapp/Newapp/data")
  write.csv(channels,"channels.csv",row.names=FALSE,fileEncoding = "UTF-8")
  write.csv(programs,"programs.csv",row.names=FALSE,fileEncoding = "UTF-8")
  write.csv(song,"song.csv",row.names=FALSE,fileEncoding = "UTF-8")
  setwd("../../../Lab5")
}