extract_direction <- function(charvec){
  wind_direct <- as.double(charvec[[13]])
  return(wind_direct)
}