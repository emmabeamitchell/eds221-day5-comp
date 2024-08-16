#install.packages("testthat")
#install.packages("devtools")
#install.packages("remote")

library(devtools)
library(usethis)
library(testthat)
rm(list = ls())


mean_range <- function(df) {
 col_means <- apply(X = df, MARGIN = 2, FUN = mean, na.rm = TRUE)
 col_means_max <-max(col_means)
 col_mean_min <- min(col_means)
  return(c(col_mean_min, col_means_max))
}


mean_range(mtcars)


expect_length(mean_range(mtcars), 2)
expect_length(mean_range(mtcars), 3)


max_sustainable_harvest <- function(K, r){
  harvest <- (K * r) / 4
  return(harvest)
}

max_sustainable_harvest(K = 36000, r = 0.31)



