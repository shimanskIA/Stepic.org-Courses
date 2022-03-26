beta.coef <- function(x)
{
  lm(scale(x[[1]]) ~ scale(x[[2]]))$coefficients
}