
library(httr)
main <- function(){
channels <- get_channels()
programs <- get_programs(channels)
song <- get_song("P2",channels)



setwd("../Shinyapp/Newapp/data")
write.csv(channels, file = "channels.csv", row.names = FALSE,fileEncoding = "UTF-8-MAC")
write.csv(programs, file = "programs.csv", row.names = FALSE,fileEncoding = "latin1")
write.csv(song, file = "song.csv",row.names = FALSE,fileEncoding = "latin1")


setwd("../../../Lab5")

}