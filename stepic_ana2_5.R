find_outliers <- function(t)
{
  num <- sapply(t, is.numeric)
  fac <- sapply(t, is.factor)
  t$is_outlier <- unlist(by(t[num], t[fac], 
     function(x)
       {
       n <- unlist(x)
       as.numeric(abs(n - mean(n)) > 2 * sd(n))
      }))
  return(t)
}