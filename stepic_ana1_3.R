filtered.sum <- function(x)
{
  sum(x[!is.na(x) & x > 0])
}