get_features <- function(dataset)
{
  fit <- glm(is_prohibited ~ weight + length + width + type, dataset, family = "binomial")
  vars <- colnames(dataset)[which(anova(fit, test = "Chisq")$`Pr(>Chi)` < 0.05)]
  if (length(vars) == 0) "Prediction makes no sense" else vars
}