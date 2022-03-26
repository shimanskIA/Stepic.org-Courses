"%+%" <- function(x, y) 
{
  my_diff <- length(x) - length(y)
  
  if (my_diff > 0)
  {
    y <- c(y, rep(NA, my_diff))
  }
  else
  {
    x <- c(x, rep(NA, abs(my_diff)))
  }
  
  x + y
}
