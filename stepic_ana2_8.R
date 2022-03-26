get_p_value <- function(test_list)
{
  lapply(normality_tests, function(x) x$p.value)
}