hetero_test <-  function(test_data)
{
  predictors <- test_data[, 2 : ncol(test_data)]
  fit <- lm(test_data[, 1] ~ ., predictors)
  summary(lm(fit$residuals ^ 2 ~ ., predictors))$r.squared
}