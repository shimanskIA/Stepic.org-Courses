VIF <-  function(test_data)
{
  predictors <- test_data[, -1]
  find_equal_cols <- function(df, col)
  {
    sapply(df, function(x) isTRUE(all.equal(x, col)))
  }
  Rx2 <- sapply(predictors, function(x) summary(lm(x ~ ., predictors[!find_equal_cols(predictors, x)]))$r.squared) 
  1 / (1 - Rx2)
}