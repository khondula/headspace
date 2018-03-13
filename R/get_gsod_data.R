install.packages("GSODR")
library(GSODR)
library(dplyr)
# https://github.com/ropensci/GSODR

nearest_stations(LAT = -76.252, LON = 38.919, distance = 400)


# nearby sites
# "895360-99999" "897340-99999" "897440-99999" "999999-77401"

# https://www7.ncdc.noaa.gov/CDO/GSOD_DESC.txt
# https://www1.ncdc.noaa.gov/pub/data/gsod/readme.txt
# other weather data sources
# https://github.com/ropensci/riem


gsod_data <- get_GSOD(years = 2017:2018, station = "724088-13707") # dover AFB airport
gsod_data$STP_kPa <- gsod_data$STP*0.1

write.csv(gsod_data, "gsod_data.csv", row.names = FALSE)

gsod_data %>% filter(YEARMODA == "2018-02-09")

# station pressure is STP, in millibars
# for using in dissolved gas calculation, need to convert to kPa 
# 1 millibar = 0.1 kPa

?get_GSOD
