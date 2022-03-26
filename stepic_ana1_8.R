regr.calc <- function(x)
{
  if (cor.test(x[[1]], x[[2]])$p.value < 0.05)
  {
    fit <- lm(x[[1]] ~ x[[2]])
    x$fit <- fit$fitted.values
    return(x)
  }
  return("There is no sense in prediction")
}