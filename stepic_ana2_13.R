descriptive_stats <- function (dataset)
{
  factor_vars <- names(which(sapply(dataset, is.factor)))
  num_var <- names(which(sapply(dataset, is.numeric)))
  dataset %>% 
    group_by_(.dots = factor_vars) %>%
    summarize_(n = interp(~n()),
              mean = interp(~mean(var, na.rm = T), var = as.name(num_var)),
              sd = interp(~sd(var, na.rm = T), var = as.name(num_var)),
              median = interp(~median(var, na.rm = T), var = as.name(num_var)),
              first_quartile = interp(~quantile(var, 0.25, na.rm = T), var = as.name(num_var)),
              third_quartile = interp(~quantile(var, 0.75, na.rm = T), var = as.name(num_var)),
              na_values = interp(~sum(is.na(var)), var = as.name(num_var)))
}