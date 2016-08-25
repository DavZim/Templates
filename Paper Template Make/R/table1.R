#!/usr/bin/Rscript
setwd("C:/OneDrive/reproducable_research/v2")
lib <- "C:/Users/d.zimmermann/Documents/R/win-library/3.3"
if (!lib %in% .libPaths()) .libPaths(c(.libPaths(), "C:/Users/d.zimmermann/Documents/R/win-library/3.3"))

library(stargazer)
library(dplyr)

dt <- read.csv("R/data/data.csv")
dt <- dt %>% select(price, carat, color, depth, x, y, z) %>% mutate(vol = x * y * z)

reg1 <- lm(data = dt, price ~ . - x - y - z)
reg2 <- lm(data = dt, price ~ . - depth)
reg3 <- lm(data = dt, price ~ . - depth - x - y - z - color)

s <- capture.output(stargazer(list(reg1, reg2, reg3), out = "paper/tables/table1.tex", float = F))

s <- capture.output(stargazer(list(reg1, reg2), out = "paper/tables/table2.tex", float = F))
