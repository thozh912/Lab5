extract_humidity <- function(charvec){
  hum <- as.double(charvec[[5]])
  return(hum)
}