one_sample_t <- function(test_data, general_mean)
{
  test_data <- test_data[sapply(test_data, is.numeric)]
  lapply(test_data, 
         function(x) 
           {
           t <- t.test(x, mu = general_mean)
           c(t$statistic, t$parameter, t$p.value)
         })
}