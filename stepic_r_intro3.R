find_closest <- function(v, n) 
{
  v <- abs(v - n)
  return(which(v == min(v)))
}
