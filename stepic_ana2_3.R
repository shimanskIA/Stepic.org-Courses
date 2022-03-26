positive_sum <-  function(test_data)
{
  lapply(test_data, function(x) sum(x[x > 0], na.rm = T))
}