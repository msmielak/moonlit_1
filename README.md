

<p align="center">
  <img align="center" src="graphics/moonlit_logo.png" width="250px"/>
</p>

# moonlit v 0.9
(c) Michal Smielak 2020
Avaiblabe under CC BY-NC-SA 4.0 licence

## Description

R package providing biologically meaningful moonlight measures. Allows to study ecological and behavioural effects of changing moonlight intensity.
Particularly usefull in determining preference towards high or low illumination levels in different temporal scales (night, lunar cycle, seasons, years).

### Disclaimer

__This is an early release and functionalities might change. This package is currently pending a peer-review and detailed desctription will be available after it is published. I take no responsibility for the proper functioning of this package. If you have any questions, concerns or you would simply like to apply it to your data, I encourage to contact me directly. Otherwise, basic explaination of currently available functions is be available below.__


### Currently working functionalities:

- [x] Predicting moonlight intensity on the ground for any given place and time
- [x] Predicting twilight illumination levels 
- [ ] Calculating nightly mean illumianation levels for a given location - this is actually a bit tricky because you need to calculate it for each night, and not for each day. Needs including into the repository as a separate function




## Using the moonlit library
### Installing
To install from github you need devtool package

```R
#install and load devtools
install.packages("devtools")
library(devtools)

#install moonlit library from github repo
install_github("msmielak/moonlit")

#load the moonlit library
library(moonlit)
```

### Functions
#### calculateMoonlightIntensity()


```R
calculateMoonlightIntensity(lat, lon, date, e)
```
Function requires as an input a matrix of values for location and date and a value of extinction coefficient *e*.  
Accepted formats:

* latitude and longitude - decimal degrees
* date - POSIXct
* Extinction coefficient *e* - a single numerical value depending on the altitude. Average extinction coefficients (magnitude per air mass) are as follows:
  - At sea level: 0.28
  - At 500m asl: 0.24
  - at 1000m asl: 0.21
  - at 2000m asl: 0.16

Function returns a data frame with following columns:

* **night** - a logical value, true when sun below the horizon for given date and location
* **moonlightModel** - predicted moonlight illumination, relative to an "average" full moon
* **twilightModel** - predicted twilight illumination in lx; this is a crude approximation based solely on the position of the sun, so use with caution.
* **illumination** - combined moon and twilight intensity, in lx. Moonlight converted to lx based on average full moon value of 0.32 lx.
* **moonPhase** - lunar phase in numerical value - % of moon face illuminated

It will also conveniently plot predicted values as points and moon phase as line, allowing for quick visual comparison of the two measures.
