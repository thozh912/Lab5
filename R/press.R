#' Extract Air Pressure Values
#' 
#' This function extract the air pressure value from the unlist content of
#' the LatestMeasurement methods call to  
#' Air Quality Service data of Göteborg open data.
#' 
#' @param charvec The function takes a list of character values that are the content 
#' of the open data.
#' 
#' @return press A double value which indicates the measurement of the air pressure.
#'  
#' @example
#'  extract_pressure(charvec)


extract_pressure <- function(charvec){
  press <- as.double(charvec[[9]])
  return(press)
}