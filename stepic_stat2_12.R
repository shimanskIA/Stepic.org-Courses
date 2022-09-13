normality_test <- function(dataset)
{
  sapply(dataset[sapply(dataset, is.numeric)], function(x) shapiro.test(x)$p.value)
}