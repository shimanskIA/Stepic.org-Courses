is_monotone <- function(x) 
{
  d = x[-1] - x[-length(x)]
  if (min(d >= 0) == T || min(d <= 0) == T)
  {
    return(T)
  }
  return(F)
}
