smart_lm <- function(x)
{
  predictors <- x[-1]; y <- x[1]
  predictors <- predictors[sapply(predictors, function(x) shapiro.test(x)$p.value > 0.05)]
  if(length(predictors) > 0) 
    return(lm(unlist(y) ~ ., predictors)$coefficients)
  else
    return("There are no normal variables in the data")
}