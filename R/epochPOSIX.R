#' Converts UNIX epoch time to CEST time
#' 
#' Takes JSON date character string and returns POSIX character string, CEST
#' time zone DST adjusted
#' 
#' This function takes a string of form \code{"/Date(1234567891000+XX00)/"} and
#' returns a string containing the corresponding POSIX, CEST time zone time.
#' 
#' @param gbgjsondate The JSON date format used by th city of Gothenburg open
#'   data API
#'   
#' @return raw A POSIX string showing the time in CEST, DST adjusted.
#'
#' @examples
#'  epochPOSIX("XXXXXX123465786456578")
#' 
#' 

epochPOSIX <- function(gbgjsondate){
  x <- gbgjsondate
  vect_x <- substr(x,7,16)
  raw <- as.POSIXct(as.numeric(vect_x), origin="1970-01-01", tz="Europe/Stockholm")
  return(raw)
}