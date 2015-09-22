r <- GET(paste("http://data.goteborg.se/AirQualityService/v1.0/",
         "LatestMeasurement/c4fdabd6-5e3a-4a54-b38d-e312d2740395?format=Json",sep=""))
http_status(r)
req <-GET(paste("http://data.goteborg.se/TravelTimesService/v1.0/",
          "LatestTravelTimes/c4fdabd6-5e3a-4a54-b38d-e312d2740395?format=Json",sep=""))

reqq <-GET(paste("http://data.goteborg.se/TravelTimesService/v1.0/",
           "Routes/c4fdabd6-5e3a-4a54-b38d-e312d2740395?format=Json",sep=""))