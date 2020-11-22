library(devtools)
library(tidyverse)
library(fs)

create_package("moonlight")

use_r("moonlightModel")
use_r("fbind")

use_git()
load_all()


(a <- factor(c("character", "hits", "your", "eyeballs")))
(b <- factor(c("but", "integer", "where it", "counts")))

