max_resid <- function(x)
{
  res <- chisq.test(t(table(x)))$stdres
  indexes <- as.data.frame(which(res == max(res), arr.ind = T))
  c(colnames(res)[indexes$Drugs], rownames(res)[indexes$Result])
}