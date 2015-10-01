#' Lab5 package contains a web API package for SR open API v.2
#'
#' The Lab5 package consists of some functions which requests data from the Swedish Radio Open API and saves that
#' data in .csv files for use with Shinyapp. The file encoding works in windows only.
#'
#' Package imports packages \code{httr} and saves files using \code{fileEncoding = "UTF-8"}
#' 
#' @name Lab5 
#' @docType package
#'
#' @section Lab5 functions:
#' The function \code{get_channels} returns a data frame with all the
#' channels and channel ids of SR. The function
#' \code{get_programs} takes data frame produced by \code{get_channels} and returns a data frame
#' with all the non-archived radio programmes and their broadcast channels. The function
#' \code{get_song} takes a radio channel character name and the data frame produced by \code{get_channels} and returns
#' the name of the current programme and programme episode on that radio channel. The function \code{main} saves data frames returned
#' by the other functions and saves them in .csv files in directory one up and two down into Shinyapp/data.
#'
#' 
#' @export
NULL
