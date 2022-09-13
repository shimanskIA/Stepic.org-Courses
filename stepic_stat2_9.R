centered <- function(test_data, var_names)
{
  names <- colnames(test_data)
  mutate_at(test_data, var_names, function(x) x - mean(x))
}