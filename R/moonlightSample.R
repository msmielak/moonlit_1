
#install and load devtools
install.packages("devtools")
library(devtools)

#install moonlit library from github repo
install_github("msmielak/moonlit", force=T)

#load the moonlit library
library(moonlit)

start <- as.POSIXct("2020-01-01 00:00:00")
stop <- as.POSIXct("2020-01-31 00:00:00")

#generating
# lat <- seq(from = 0, to = 90, by = 10)
# lat <- rep(lat, 7210)
# lon <- 0
# lon <- rep(lon, 7210)


#generating sequence of 1h data
time <- seq(start, stop, "hour")
#time <- rep(time, each = 100)

lat <- 45
lat <- rep(lat, length(time))
lon <- 0
lon <- rep(lon, length(time))

date <- as.POSIXct(time)

moonlightSample <- calculateMoonlightIntensity(lat, lon, date, 0.28)
