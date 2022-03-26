generator <- function(set, prob = rep(1/length(set), length(set))) 
{ 
  f <- function(n)
  {
    sample(set, size = n, prob = prob)
  }
  return(f)
} 
