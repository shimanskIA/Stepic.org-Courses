resid.norm  <- function(fit)
{
  if (shapiro.test(fit$residuals)$p.value > 0.05)
  {
    return(ggplot(fit, aes(x = fit$residuals)) + geom_histogram(bind = 4, fill = "green"))
  }
  return(ggplot(fit, aes(x = fit$residuals)) + geom_histogram(bindwidth = 4, fill = "red"))
}