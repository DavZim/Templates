#!/usr/bin/Rscript
setwd("C:/OneDrive/reproducable_research/v2")
lib <- "C:/Users/d.zimmermann/Documents/R/win-library/3.3"
if (!lib %in% .libPaths()) .libPaths(c(.libPaths(), "C:/Users/d.zimmermann/Documents/R/win-library/3.3"))

library(dplyr)
library(ggplot2)

set.seed(123)
dt <- sample_n(diamonds, 10000)

write.csv(dt, file = "R/data/data.csv", row.names = F)
