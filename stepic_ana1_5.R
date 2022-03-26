corr.calc <- function(x)
{
  correlation <- cor.test(x[, 1], x[, 2])
  print(c(correlation$estimate, correlation$p.value))
}