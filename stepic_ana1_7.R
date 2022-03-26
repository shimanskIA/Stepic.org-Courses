smart_cor <- function(x)
{
  if (sum(sapply(x, function(x) shapiro.test(x))[2, ] < 0.05) > 0)
  {
    return(cor.test(x[[1]], x[[2]], method = "spearman")$estimate)
  }
  return(cor.test(x[[1]], x[[2]])$estimate)
}