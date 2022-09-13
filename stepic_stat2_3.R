get_important_cases <- function(x)
{
  cut_df <- x[sapply(x, is.numeric)]
  x$important_cases <- factor(ifelse(apply(cut_df, 1, function(y) sum(y > colMeans(cut_df))) > (ncol(cut_df) / 2), "Yes", "No"), levels = c("Yes", "No"))
  x
}