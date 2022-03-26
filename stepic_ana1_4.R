outliers.rm <- function(x)
{
  my_IQR <- IQR(x)
  quantiles <- quantile(x, probs = c(0.25, 0.75))
  x[x > (quantiles["25%"] - 1.5 * my_IQR) & x < (quantiles["75%"] + 1.5 * my_IQR)]
}