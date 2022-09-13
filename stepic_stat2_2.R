most_significant <-  function(x)
{
  p_vals <- sapply(x, function(y) chisq.test(table(as.character(y)))$p.value)
  colnames(x)[which(p_vals == min(p_vals))]
}