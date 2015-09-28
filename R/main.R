#library(httr)

r <- GET(paste("http://data.goteborg.se/AirQualityService/v1.0/",
         "LatestMeasurement/c4fdabd6-5e3a-4a54-b38d-e312d2740395?format=Json",sep=""))

http_status(r)
req <-GET(paste("http://data.goteborg.se/TravelTimesService/v1.0/",
          "LatestTravelTimes/c4fdabd6-5e3a-4a54-b38d-e312d2740395?format=Json",sep=""))

reqq <-GET(paste("http://data.goteborg.se/TravelTimesService/v1.0/",
           "Routes/c4fdabd6-5e3a-4a54-b38d-e312d2740395?format=Json",sep=""))

cont <- content(r)
charvec <- unlist(cont)
starttime <- epochPOSIX(charvec[1])
stoptime <- epochPOSIX(charvec[2])

tofile <- data.frame(starttime,stoptime)

setwd("D:/R_HW/Shinyapp/Newapp/www")
write.csv(tofile, file = "time.csv", row.names = FALSE)
read <- read.csv(file = "time.csv")
setwd("D:/R_HW/Lab5")