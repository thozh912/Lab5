#' Returns a data frame with channels and channels.id
#' 
#' This function gets all the channel names and ids from SR v.2. API
#' 
#' @return channel_file A dataframe with channel names and channels.id.

get_channels <- function(){
  r <- GET("http://api.sr.se/api/v2/channels/?format=json&pagination=false")
  cont <- content(r)
  charvec <- unlist(cont)
  channels <- charvec[which(names(charvec) == "channels.name")]
  names(channels) <- c()
  channels <- c(channels,"Barnwebben")
  
  channel_ids <- charvec[which(names(charvec) == "channels.id")]
  channel_ids <- c(channel_ids,"1000")
  
  channel_file <- data.frame(channels,channel_ids,stringsAsFactors = FALSE)
  
  return(channel_file)
}

