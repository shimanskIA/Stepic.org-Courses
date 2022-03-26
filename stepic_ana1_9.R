fill_na <- function(x)
{
  x$y_full <- x[[3]]
  na_positions <- which(is.na(x$y_full))
  fit <- predict(lm(x[[3]] ~ x[[1]] + x[[2]]), test_data[, -3])
  x$y_full <- replace(x$y_full, na_positions, fit[na_positions])
  return(x)
}