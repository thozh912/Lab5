#' Returns a data frame with The song and artist playing currently
#' 
#' This function returns the current song and artist on the specified channel
#' name from SR v.2. API.
#' 
#' @param channel_frame A data frame with channel names and channels.id.
#'   
#' @param channel_name A string containing the channel name.
#'   
#' @return song_file A dataframe with song name and performing artist.
#'   

get_song <- function(channel_name,channel_frame){
  ertiop <- channel_frame
  
  songrightnow=list()
  
  for(i in 1:length(ertiop[,1])){
    if(channel_name == ertiop[i,1]){
      songrightnow <- GET(paste0("http://api.sr.se/api/v2/playlists/rightnow?channelid=",ertiop[i,2],"&format=json&pagination=false"))
      
    }
  }
  
  
  
  contur <- content(songrightnow)
  charvecto <- unlist(contur)
  
  songnow <- charvecto[which(names(charvecto) == "playlist.previoussong.title")]
  names(songnow) <- c()
  
  songnowartist <- charvecto[which(names(charvecto) == "playlist.previoussong.artist")]
  names(songnowartist) <- c()
  if(length(songnow) == 0){
    songnow <- "None"
    songnowartist <- "None"
  }

  song_file <-data.frame(songnow,songnowartist)
  return(song_file)
}
