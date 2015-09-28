rm(list=ls())

#library(httr)

channels <- get_channels()
programs <- get_programs(channels)
song <- get_song("P2",channels)
