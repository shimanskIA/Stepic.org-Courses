filtered.cor <- function(x)
{
  x <- x[sapply(x, class) == "numeric"]
  correlation <- corr.test(x)
  diag(correlation$r) <- 0
  return(correlation$r[which.max(abs(correlation$r))])
}