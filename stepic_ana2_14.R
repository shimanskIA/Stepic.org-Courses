to_factors <- function(test_data, factors)
{
  test_data %>%
  mutate_at(factors, funs(factor(ifelse(. > mean(.), 1, 0))))
}