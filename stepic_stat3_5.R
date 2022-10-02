median_cl_boot <- function(x)
{
  med <- median(x)
  boot <- c()
  for (i in 1:1000)
  {
    boot <- c(boot, median(sample(x, length(x), replace = T)) - med)
  }
  c(quantile(boot, 0.025) + med, quantile(boot, 0.975) + med)
}