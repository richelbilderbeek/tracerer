#' Calculate the geometric mean
#' @param values a numeric vector of values
calc_geom_mean <- function(values) {
  exp(mean(log(values)))
}