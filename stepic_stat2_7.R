smart_anova <- function(test_data)
{
  normality <- unlist(lapply(split(test_data, test_data$y), function(y) shapiro.test(y$x)$p.value))
  homo <- bartlett.test(x ~ y, test_data)$p.value
  if (all(normality > 0.05) & homo > 0.05) c("ANOVA" = summary(aov(x ~ y, test_data))[[1]]$'Pr(>F)'[1]) else c("KW" = kruskal.test(x ~ y, test_data)$p.value)
}


