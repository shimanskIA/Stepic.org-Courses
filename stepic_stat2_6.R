get_coefficients <- function(dataset)
{
  exp(glm(y ~ x, test_data, family = "binomial")$coefficients)
}