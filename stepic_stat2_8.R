normality_by <- function(test)
{
  test %>%
    group_by(y, z) %>%
    summarize(p_value = shapiro.test(x)$p.value)
}