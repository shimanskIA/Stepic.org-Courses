slope_cl_boot <- function(df)
{
  slope <- lm(y ~ x, df)$coefficients[2]
  boot <- c()
  for (i in 1:100000)
  {
    samp <- data.frame(x = sample(df$x, length(df$x), replace = T), y = sample(df$y, length(df$y), replace = T))
    boot <- c(boot, lm(y ~ x, samp)$coefficients[2] - slope)
  }
  c(quantile(boot, 0.025) + slope, quantile(boot, 0.975) + slope)
}