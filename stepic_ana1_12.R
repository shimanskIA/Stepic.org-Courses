normality.test  <- function(x)
{
  sapply(x, function(x) shapiro.test(x)$p.value)
}