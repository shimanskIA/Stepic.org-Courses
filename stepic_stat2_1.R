smart_test <-  function(x)
{
  tab <- table(x)
  if (all(tab > 5))
  {
    var = chisq.test(tab)
    c(var$statistic, (nrow(tab) - 1) * (ncol(tab) - 1), var$p.value)
  }
  else fisher.test(tab)$p.value
}