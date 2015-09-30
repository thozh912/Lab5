#' Returns a data frame with programs and channels.id for the programs
#' 
#' This function gets all the program names and channel.id and names for the
#' channels on which the programs are broadcast from SR v.2. API
#' 
#' This function only returns the programs which are not yet archived, i.e.
#' still broadcasting.(purportedly)
#' 
#' @param channel_frame A dataframe with channel names and channel.id.
#' @return program_file A dataframe with program names and broadcast channel.id
#'   and channel name.

get_programs <- function(channel_frame){
  ertiop <- channel_frame
  
  req <- GET("http://api.sr.se/api/v2/programs/index/?format=json&pagination=false&isarchived=false")
  contu <- content(req)
  charvect <- unlist(contu)
  program_names <- charvect[which(names(charvect) == "programs.name")]
  
  channel_name=rep("Unknown channel",length(program_names))
  
  program_channel_ids <- charvect[which(names(charvect) == "programs.channel.id")]
  
  program_file <- data.frame(program_names,program_channel_ids,stringsAsFactors = FALSE)
  

  first <- program_file[,2]
  second <- ertiop[,2]

  
  for(i in 1:length(first)){
    for(j in 1:length(second)){
      if(first[i] == second[j]){
        channel_name[i] <- as.character(ertiop[j,1])
      }
    }
    
  }

  program_file <- data.frame(program_file,channel_name,stringsAsFactors = FALSE)

  
  return(program_file)
}

