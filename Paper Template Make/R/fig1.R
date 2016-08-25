#!/usr/bin/Rscript
setwd("C:/OneDrive/reproducable_research/v2")
lib <- "C:/Users/d.zimmermann/Documents/R/win-library/3.3"
if (!lib %in% .libPaths()) .libPaths(c(.libPaths(), "C:/Users/d.zimmermann/Documents/R/win-library/3.3"))

library(ggplot2)

dt <- read.csv("R/data/data.csv")

fig1 <- ggplot(dt, aes(x = carat, y = price, color = color)) + geom_point()

ggsave(fig1, file = "paper/figures/fig1.pdf")
