#' Returns a data frame with The current program name and program episode playing currently
#' 
#' This function returns the current song and artist on the specified channel
#' name from SR v.2. API.
#' 
#' @param channel_frame A data frame with channel names and channels.id.
#'   
#' @param channel_name A string containing the channel name.
#'   
#' @return song_file A dataframe with program name and program episode.
#'   

get_song <- function(channel_name,channel_frame){
  ertiop <- channel_frame
  
  songrightnow=list()
  
  for(i in 1:length(ertiop[,1])){
    if(channel_name == ertiop[i,1]){
      songrightnow <- GET(paste0("http://api.sr.se/api/v2/scheduledepisodes/rightnow?channelid=",ertiop[i,2],"&format=json&pagination=false"))
      
    }
  }
  
  
  
  contur <- content(songrightnow)
  charvecto <- unlist(contur)
  
  programnow <- charvecto[which(names(charvecto) == "channel.currentscheduledepisode.program.name")]
  names(programnow) <- c()
  

  programnowepisode <- charvecto[which(names(charvecto) == "channel.currentscheduledepisode.title")]
  names(programnowepisode) <- c()
  if(length(programnow) == 0){
    programnow <- "None"
    programnowepisode <- "None"

  }

  song_file <-data.frame(programnow,programnowepisode,stringsAsFactors = FALSE)

  return(song_file)
}
