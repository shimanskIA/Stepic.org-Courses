build_ziggurat <- function(n) 
{
  r = 2 * n - 1
  m <- matrix(nrow = r, ncol = r)
  for (i in 1 : n)
  {
    m[i : (r - i + 1), i : (r - i + 1)] <- i
  }
  m
}
